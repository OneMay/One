package com.newthread.framework.service.impl;

import com.newthread.entity.Honor;
import com.newthread.framework.mapper.TeamhonorMapper;
import com.newthread.framework.service.HonorService;
import com.newthread.framework.util.DateUtils;
import com.newthread.model.HonorModel;
import org.apache.log4j.Logger;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.CachePut;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Author:pingcai
 * Date:16-10-14
 * Mail:11867939@qq.com
 */
@Service
@CacheConfig(cacheNames = "one_day")
public class HonorServiceImpl implements HonorService {

    private final Logger logger = Logger.getLogger(this.getClass());

    @Resource
    private TeamhonorMapper mapper;

    /**
     * @param n    页数
     * @param size 大小
     * @return
     */
    @Cacheable(key = "'honor_' + #n + #size", unless = "#result == null")
    public HonorModel select(Integer n, Integer size) {

        int record = getRecord();

        if (size > record) {
            size = record;
            n = 1;
        }

        //参数页数从1开始，
        n = (n > 0 ? n : 1);

        //数据库从0开始，这里穿进来的参数是页数，要转成数据库起始位置，语句：limit 起点，数量
        List<Honor> teamhonors = mapper.select((n - 1) * size, size);


        //数据库查不到数据直接返回
        if (teamhonors == null || teamhonors.size() == 0) {
            return null;
        }

        HonorModel model = new HonorModel();
        HonorModel.Honor hh = null;

        for (Honor h : teamhonors) {

            hh = setValue(h);

            model.add(hh);

        }

        model.setCurPage(n);
        model.setPageSize(size);
        model.setTotalRecode(record);
        model.setTotalPage((model.getTotalRecode() + model.getPageSize() - 1) / model.getPageSize());

        return model;
    }

    public Integer add(Honor honor) {
        return mapper.insert(honor);
    }

    @CachePut(key = "honor_record")
    public Integer getRecord() {
        return mapper.getRecode();
    }

    @CachePut(key = "'honor_record' + #t")
    public Integer getRecordByType(Integer t) {
        return mapper.getRecordByType(t);
    }

    /**
     * @param n    第几页
     * @param t    类型，空或不匹配则默认获取所有类型列表
     * @param size 页数 默认 10条
     * @return
     */
    @Cacheable(key = "'honor_' + #t + #n + #size", unless = "#result == null")
    public HonorModel getHonorByType(Integer t, Integer n, Integer size) {

        List<Honor> teamhonors = null;
        int record = 0;

        if (t == -1) {        //获取默认所有类型的指定数量的荣誉
            record = getRecord();
            if(size > record){
                size = record;
            }
            n = 1;
            teamhonors = mapper.select((n - 1) * size, size);
        } else {             //获取指定类型的指定数量的荣誉
            record = getRecordByType(t);
            if(size > record){
                size = record;
            }
            n = 1;
            teamhonors = mapper.selectAllByType(t, (n - 1) * size, size);
        }

        //参数页数从1开始，
        n = (n > 0 ? n : 1);

        //数据库查不到数据直接返回
        if (teamhonors == null || teamhonors.size() == 0) {
            return null;
        }

        HonorModel model = new HonorModel();
        HonorModel.Honor hh = null;

        for (Honor h : teamhonors) {

            hh = setValue(h);

            model.add(hh);

        }

        model.setCurPage(n);
        model.setPageSize(size);
        model.setTotalRecode(record);
        model.setTotalPage((model.getTotalRecode() + model.getPageSize() - 1) / model.getPageSize());

        return model;

    }


    @Cacheable(key = "'honor_' + #id", unless = "#result == null")
    public Honor getHonorBySid(Integer id) {

        Honor model = mapper.selectBySid(id);

        return model;
    }

    /**
     * enity转model
     *
     * @param h
     * @return
     */
    private HonorModel.Honor setValue(Honor h) {

        HonorModel.Honor hh;
        hh = new HonorModel.Honor();

        hh.setHonorSid(h.getHonorSid());
        hh.setHonerTime(DateUtils.dateTime2String(h.getHonorTime()));
        hh.setHonerType(h.getHonorType());

        //hh.setHonorIntroduce(h.getHonorIntroduce());

        String body = h.getHonorIntroduce();

        hh.setHonorIntroduce(body.substring(0, body.length() > 80 ? 80 : body.length()));

        hh.setHonorNote(h.getHonorNote());
        hh.setHonorPicture(h.getHonorPicture());
        hh.setHonorTimesstamp(h.getHonorTimesstamp());
        hh.setHornorTitle(h.getHonorTitle());
        return hh;
    }
}
