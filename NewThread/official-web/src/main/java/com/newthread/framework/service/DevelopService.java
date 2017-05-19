package com.newthread.framework.service;

import com.newthread.entity.Teamdevelopment;
import com.newthread.model.DevelopModel;
import org.springframework.stereotype.Service;

/**
 * Author:黄平财
 * Date:2016/10/8
 * Mail:11867939@qq.com
 */
@Service
public interface DevelopService {

    DevelopModel getDevelopment();

    DevelopModel getNewestDevelopment();

    Teamdevelopment add(DevelopModel model);
}
