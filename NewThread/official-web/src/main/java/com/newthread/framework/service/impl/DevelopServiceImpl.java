package com.newthread.framework.service.impl;

import com.newthread.entity.Teamdevelopment;
import com.newthread.framework.mapper.TeamdevelopmentMapper;
import com.newthread.framework.service.DevelopService;
import com.newthread.framework.util.DateUtils;
import com.newthread.model.DevelopModel;
import org.apache.commons.beanutils.BeanUtils;
import org.apache.log4j.Logger;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.CachePut;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.lang.reflect.InvocationTargetException;
import java.time.Clock;
import java.time.Instant;
import java.time.LocalDate;
import java.time.LocalDateTime;

/**
 * Author:黄平财
 * Date:2016/10/8
 * Mail:11867939@qq.com
 */
@Service
@CacheConfig(cacheNames = "one_day")
public class DevelopServiceImpl implements DevelopService {

    Logger logger = Logger.getLogger(DevelopServiceImpl.class);

    @Resource
    TeamdevelopmentMapper mapper;

    @Cacheable(key = "'develop_newest'",unless = "#result == null")
    public DevelopModel getDevelopment() {

        Teamdevelopment t = mapper.selectDevelopment();

        return g(t);
    }

    @CachePut(key = "'develop_newest'",unless = "#result == null")
    public DevelopModel getNewestDevelopment() {
        Teamdevelopment t = mapper.selectNewestDevelopment();
        return  g(t);
    }

    @CacheEvict(key = "'develop_newest'")
    public Teamdevelopment add(DevelopModel model) {

        Teamdevelopment teamdevelopment = new Teamdevelopment();

        try {
            BeanUtils.copyProperties(teamdevelopment,model);
            //数据库字段设计有误，应该为long,设为int，设置了也没什么意义
            //teamdevelopment.setDevelopmentTimesstamp(DateUtils.getTimeStampInteger());
            logger.info(teamdevelopment);
            mapper.insert(teamdevelopment);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
            teamdevelopment = null;
        }

        return teamdevelopment;
    }

    private DevelopModel g(Teamdevelopment t){
        if(t == null){
            return null;
        }

        DevelopModel model = new DevelopModel();
        model.setDevelopmentContent(t.getDevelopmentContent());
        model.setDevelopmentNote(t.getDevelopmentNote());
        model.setDevelopmentPicture(t.getDevelopmentPicture());
        model.setDevelopmentTimesstamp(t.getDevelopmentTimesstamp());

        return model;
    }
}
