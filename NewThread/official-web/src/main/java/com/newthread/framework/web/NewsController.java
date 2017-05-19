package com.newthread.framework.web;

import com.newthread.entity.Teamnews;
import com.newthread.framework.service.NewsService;
import com.newthread.framework.service.RoleService;
import com.newthread.framework.util.MessageMaker;
import com.newthread.model.NewsModel;
import com.newthread.model.NewsModelWithImages;
import org.apache.log4j.Logger;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;


/**
 * Author:huangpingcaigege
 * Date:2016/10/8
 * Mail:11867939@qq.com
 */
@RestController
public class NewsController {

    private final Logger logger = Logger.getLogger(this.getClass());

    @Resource
    private NewsService newsService;

    @Resource
    private RoleService roleService;

    /**
     * 根据类型获取新闻，现有类型：团队新闻、例会动态、文化活动、项目快报、项目合作
     * 默认获取团队新闻
     *
     * @param n 第几页
     * @param s 每页大小
     * @return
     */
    @RequestMapping(value = "/news/g.do", method = RequestMethod.GET)
    public Object getNewsByPage(
            @RequestParam(required = false) Integer n,
            @RequestParam(required = false) Integer s,
            @RequestParam(required = false) Integer type) {

        if (null == n || n.intValue() < 0) {
            n = 1;
        }
        //为空每页就十条
        if (null == s || s.intValue() < 0) {
            s = 10;
        }

        NewsModel model = newsService.select(n, s, type);

        if (model == null) {
            return MessageMaker.make("E01", "无记录！", null);
        }

        return model;
    }

    /**
     * 获取一篇新闻，RESTFul
     *
     * @param id 新闻ID
     */
    @RequestMapping(value = "/news/{id}", method = RequestMethod.GET)
    public Object getNewBySidRESTFul(@PathVariable Integer id) {
        if (null == id || id.intValue() < 0) {
            return newsService.getOneNewestNews();
        }
        NewsModelWithImages news = newsService.selectByPrimaryKeyWithImages(id);
        if (news == null) {
            return MessageMaker.make(null, "无此篇新闻!", null);
        }
        return news;
    }

    /**
     * @param id 新闻ID
     */
    @RequestMapping(value = "/news/gn.do", method = RequestMethod.GET)
    public Object getNewBySid(@RequestParam(required = false) Integer id) {

        if (null == id || id.intValue() < 0) {
            return newsService.getOneNewestNews();
        }

        Teamnews news = newsService.selectByPrimaryKey(id);

        if (news == null) {
            return MessageMaker.make(null, "无此篇新闻!", null);
        }
        return news;
    }

    /**
     * 图片新闻接口
     *
     * @param s 获取多少个图片新闻,默认为1个
     */
    @RequestMapping(value = "/news/gp.do", method = RequestMethod.GET)
    public Object getNewByPicture(@RequestParam(required = false) Integer s) {

        if (null == s || s.intValue() < 0) {
            s = 1;
        }

        List<Teamnews> list = newsService.getNewByPictureList(s);

        if (list == null || list.isEmpty()) {
            return MessageMaker.make(null, "暂时没有图片新闻!", null);
        }
        return list;
    }

    @RequestMapping(value = "/admin/news/d.do", method = RequestMethod.GET)
    public Integer deleteNewBySid(@RequestParam Integer id) {

        Subject subject = SecurityUtils.getSubject();

        Integer success = 0;

        if (subject.hasRole(roleService.selectAdmin())) {
            success = newsService.deleteNewBySid(id);
        }

        return success;
    }

    @RequestMapping(value = "/admin/news/u.do", method = RequestMethod.POST)
    public Integer updateNew(@RequestBody(required = false) Teamnews teamnews) {

        Subject subject = SecurityUtils.getSubject();

        Integer success = 0;

        if (subject.hasRole(roleService.selectAdmin())) {
            success = newsService.updateNew(teamnews);
        }

        return success;
    }


    @RequestMapping(value = "/admin/news/a.do", method = RequestMethod.POST)
    public Integer addNew(@RequestBody(required = false) Teamnews teamnews) {

        if (teamnews.getNewsTitle() == null || teamnews.getNewsContend() == null) {
            return 0;
        }

        Subject subject = SecurityUtils.getSubject();

        Integer success = 0;

        if (subject.hasRole(roleService.selectAdmin())) {
            success = newsService.addNew(teamnews);
        }

        return success;
    }
}
