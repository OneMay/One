package com.newthread.framework.service.impl;

import com.newthread.entity.Aboutourteam;
import com.newthread.framework.mapper.AboutourteamMapper;
import com.newthread.framework.service.AboutService;
import com.newthread.model.AboutModel;
import org.apache.commons.beanutils.BeanUtils;
import org.apache.log4j.Logger;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.CachePut;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.lang.reflect.InvocationTargetException;

/**
 * Author:黄平财
 * Date:2016/10/8
 * Mail:11867939@qq.com
 */
@Service
@CacheConfig(cacheNames = "one_day")
public class AboutServiceImpl implements AboutService {

    Logger logger = Logger.getLogger(AboutServiceImpl.class);

    @Resource
    AboutourteamMapper mapper;


    @Cacheable(key = "'about_newest'", unless = "#result == null")
    public AboutModel getAboutInfo() {

        Aboutourteam t = mapper.selectNewestAbout();

        return g(t);
    }

    @CacheEvict(key = "'about_newest'")
    public Aboutourteam add(AboutModel model) {

        int flag = 0;
        Aboutourteam aboutourteam = new Aboutourteam();

        try {
            BeanUtils.copyProperties(aboutourteam, model);

            logger.info(aboutourteam);

            flag = mapper.insert(aboutourteam);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }


        return flag > 0 ? aboutourteam : null;
    }

    private AboutModel g(Aboutourteam t) {
        if (t == null) {
            return null;
        }

        AboutModel model = new AboutModel();

        model.setAboutPicture(t.getAboutPicture());
        model.setAboutQq(t.getAboutQq());
        model.setAboutWeibo(t.getAboutWeibo());
        model.setAboutTel(t.getAboutTel());
        model.setAboutMail(t.getAboutMail());
        model.setAboutMaster(t.getAboutMaster());
        model.setAboutWechat(t.getAboutWechat());
        model.setAboutFacebook(t.getAboutFacebook());
        model.setAboutTwitter(t.getAboutTwitter());
        model.setAboutTimesstamp(t.getAboutTimesstamp());
        model.setAboutNote(t.getAboutNote());

        return model;
    }

}
