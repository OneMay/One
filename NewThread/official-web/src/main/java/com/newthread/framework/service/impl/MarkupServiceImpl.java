package com.newthread.framework.service.impl;

import com.newthread.entity.Job;
import com.newthread.entity.Teammarkup;
import com.newthread.framework.mapper.JobMapper;
import com.newthread.framework.mapper.TeammarkupMapper;
import com.newthread.framework.service.MarkupService;
import com.newthread.model.MarkupModel;
import org.apache.commons.beanutils.BeanUtils;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;

/**
 * Author:黄平财
 * Date:2016/10/8
 * Mail:11867939@qq.com
 */
@Service
@CacheConfig(cacheNames = "one_month")
public class MarkupServiceImpl implements MarkupService {

    @Resource
    TeammarkupMapper mapper;

    @Resource
    JobMapper jobMapper;


    @Cacheable(key = "'markup_list'")
    public List<MarkupModel> getNewestAllMarkup() {

        List<Teammarkup> list = mapper.selectNewestAll();
        List<MarkupModel> l = new ArrayList<>();
        MarkupModel m = null;

        for (Teammarkup t : list){

            m = new MarkupModel();

            m.setMarkupAcademy(t.getMarkupAcademy());
            m.setMarkupContent(t.getMarkupContent());
            m.setMarkupGroup(t.getMarkupGroup());
            m.setMarkupGrade(t.getMarkupGrade());
            m.setMarkupMajor(t.getMarkupMajor());
            m.setMarkupPicture(t.getMarkupPicture());
            m.setMarkupTimestamp(t.getMarkupTimestamp());
            m.setMarkupNote(t.getMarkupNote());
            m.setMarkupJob(t.getMarkupJob());

            l.add(m);

        }


        return l;
    }

    /**
     *  将代码做缓存键,当有结果才缓存
     * @param code  中高层代码
     * @return
     */
    @Cacheable(key = "'markup_' + #code",unless="#result == null")
    public MarkupModel getMarkupByJob(String code) {

        Teammarkup t = mapper.selectNewestMarkupByJob(code);

        if(t != null){
            MarkupModel m = new MarkupModel();
            m.setMarkupAcademy(t.getMarkupAcademy());
            m.setMarkupContent(t.getMarkupContent());
            m.setMarkupGroup(t.getMarkupGroup());
            m.setMarkupGrade(t.getMarkupGrade());
            m.setMarkupMajor(t.getMarkupMajor());
            m.setMarkupPicture(t.getMarkupPicture());
            m.setMarkupTimestamp(t.getMarkupTimestamp());
            m.setMarkupNote(t.getMarkupNote());
            m.setMarkupJob(t.getMarkupJob());
            return m;
        }
        return null;
    }

    @CacheEvict
    public Teammarkup add(MarkupModel markupModel) {

        Teammarkup t = new Teammarkup();

        try {
            BeanUtils.copyProperties(t,markupModel);
            mapper.insert(t);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
            t = null;
        } catch (InvocationTargetException e) {
            e.printStackTrace();
            t = null;
        }catch (Exception e){
            e.printStackTrace();
            t = null;
        }

        return t;
    }

    @Cacheable(key = "'all_jobs'",unless="#result == null")
    public List<Job> getAllJob() {
        return jobMapper.selectAll();
    }
}
