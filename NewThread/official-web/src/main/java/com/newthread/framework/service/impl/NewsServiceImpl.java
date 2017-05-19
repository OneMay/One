package com.newthread.framework.service.impl;

import com.newthread.entity.Teamnews;
import com.newthread.framework.mapper.TeamnewsMapper;
import com.newthread.framework.service.NewsService;
import com.newthread.framework.util.DateUtils;
import com.newthread.framework.util.NetworkUtil;
import com.newthread.model.NewsModel;
import com.newthread.model.NewsModelWithImages;
import org.apache.log4j.Logger;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

/**
 * Author:黄平财
 * Date:2016/10/17
 * Mail:11867939@qq.com
 */
@Service
@CacheConfig(cacheNames = "one_day")
public class NewsServiceImpl implements NewsService {

    private final Logger logger = Logger.getLogger(this.getClass());

    @Resource
    private TeamnewsMapper mapper;

    @Override
    public int add(Teamnews news) {
        return mapper.insert(news);
    }

    /**
     * @param number 第几页
     * @param size   大小
     * @param type   类型
     * @return
     */
    @Cacheable(key = "'news_' + #number + #size + #type", unless = "#result == null")
    public NewsModel select(Integer number, Integer size, Integer type) {

        int record = getRecord();

        if (size > record) {
            size = record;
            number = 1;
        }

        // 0 是默认获取所有类型的新闻
        if (type == null) {
            type = new Integer(0);
        }

        //参数页数从1开始，
        number = (number > 0 ? number : 1);

        //数据库从0开始，这里穿进来的参数是页数，要转成数据库起始位置，语句：limit 起点，数量
        List<Teamnews> teamnewses = mapper.select((number - 1) * size, size);

        Iterator<Teamnews> it = teamnewses.iterator();

        //过滤 不是 目标类型的新闻
        while (it.hasNext()) {
            Teamnews t = it.next();
            String str = t.getNewsType();
            if (type.intValue() == 0) {
                break;
            }

            if (!(type.intValue() + "").equals(str)) {
                it.remove();
            }
        }

        //数据库查不到数据直接返回
        if (teamnewses == null || teamnewses.size() == 0) {
            return null;
        }

        NewsModel model = new NewsModel();
        NewsModel.News news = null;

        for (Teamnews h : teamnewses) {

            news = new NewsModel.News();

            news.setNewsSid(h.getNewsSid());


            //日期处理
            news.setNewsTime(DateUtils.dateTime2String(h.getNewsTime()));
            news.setTimeDate(DateUtils.date2String(h.getNewsTime())); //设置日期
            news.setTimeTime(DateUtils.time2String(h.getNewsTime()));//设置时间

            news.setNewsType(h.getNewsType());

            //hh.setHonorIntroduce(h.getHonorIntroduce());

            String body = h.getNewsContend();

            news.setNewsContend(body.substring(0, body.length() > 80 ? 80 : body.length()));

            news.setNewsNote(h.getNewsNote());
            news.setNewsPicture(h.getNewsPicture());
            news.setNewsTimesstamp(h.getNewsTimesstamp());
            news.setNewsTitle(h.getNewsTitle());

            model.add(news);

        }

        model.setCurPage(number);
        model.setPageSize(size);
        model.setTotalRecode(record);
        model.setTotalPage((model.getTotalRecode() + model.getPageSize() - 1) / model.getPageSize());

        return model;
    }

    @Override
    public NewsModelWithImages selectByPrimaryKeyWithImages(Integer id) {
        return mapper.selectByPrimaryKeyWithImages(id);
    }

    @Cacheable(key = "'news_' + #id", unless = "#result == null")
    public Teamnews selectByPrimaryKey(Integer id) {
        return mapper.selectByPrimaryKey(id);
    }


    /**
     * 获取图片新闻,每次取一条,检查图片能正常显示就返回去,最多查五条,查不到就不查了
     *
     * @return
     */
    @Cacheable(key = "'picture_news'", unless = "#result == null")
    public Teamnews getNewByPicture() {

        int record = getRecord();

        Teamnews news = null;
        String picture = null;
        String path;

        int requestNum = 6; //尝试查找的次数

        for (int i = 1; i < requestNum; i++) {
            news = mapper.getNewsByDescOrderNumber(--record);
            if (news != null) {

                picture = news.getNewsPicture();
                if (picture != null) {
                    path = picture.split(";")[0]; //获取到第一张图片
                    try {
                        if (NetworkUtil.requestMatchType(path, "image/.*", 5000)) { //发起网络请求
                            news.setNewsPicture(path);
                            return news;//必须是图片类型的
                        }
                        logger.info("第 " + i + "请求, 类型不符,新闻SID为" + news.getNewsSid() + ",URL为:" + path);
                    } catch (Exception e) {
                        logger.info("第 " + i + "请求, 图片不存在,新闻SID为" + news.getNewsSid());
                    }
                }
            }
        }
        return null;
    }

    @Cacheable(key = "'picture_news_' + #size", unless = "#result == null")
    public List<Teamnews> getNewByPictureList(int size) {

        List<Teamnews> list = new ArrayList<>();

        int record = getRecord();

        if (size > record) {
            size = record;
        }

        Teamnews news = null;

        String picture = null;
        String path;
        URL url = null;
        URLConnection con = null;
        while ((record-- > 0) && list.size() < size) {
            news = mapper.getNewsByDescOrderNumber(record);
            if (news != null) {
                picture = news.getNewsPicture();
                if (picture != null) {
                    path = picture.split(";")[0]; //获取到第一张图片
                    try {
                        url = new URL(path);
                        con = url.openConnection();
                        con.setConnectTimeout(5 * 1000);

                        if (con.getContentType().matches("image/.*")) {
                            news.setNewsPicture(path);
                            list.add(news);
                        }
                    } catch (Exception e) {
                        logger.info("图片不存在,新闻SID为" + news.getNewsSid());
                    }
                }
            }
        }

        return list;
    }

    @CacheEvict(key = "'news_' + #id")
    public Integer deleteNewBySid(Integer id) {

        Integer success = mapper.deleteNewBySid(id);

        return success;
    }

    @CacheEvict(key = "'news_' + #teamnews.newsSid")
    public Integer updateNew(Teamnews teamnews) {

        Integer success = mapper.updateNew(teamnews.getNewsSid(), teamnews.getNewsTitle(),
                teamnews.getNewsPicture(), teamnews.getNewsType(), teamnews.getNewsAuthor(),
                teamnews.getNewsReaders(), new java.sql.Timestamp(new Date().getTime()),
                teamnews.getNewsTimesstamp(), teamnews.getNewsContend(), teamnews.getNewsNote());

        return success;
    }

    @CacheEvict(key = "'news_' + #teamnews.newsSid")
    public Integer addNew(Teamnews teamnews) {

        Integer success = mapper.addNew(teamnews.getNewsTitle(), teamnews.getNewsPicture(),
                teamnews.getNewsType(), teamnews.getNewsAuthor(), teamnews.getNewsReaders(),
                new java.sql.Timestamp(new Date().getTime()), teamnews.getNewsTimesstamp(),
                teamnews.getNewsContend(), teamnews.getNewsNote());

        return success;
    }

    @Cacheable(key = "'news_newest'", unless = "#result == null")
    public Teamnews getOneNewestNews() {
        return mapper.getNewsByDescOrderNumber(0);
    }


    public int getRecord() {
        return mapper.getRecord();
    }
}
