package com.newthread.framework.service;

import com.newthread.entity.Aboutourteam;
import com.newthread.model.AboutModel;

/**
 * Author:黄平财
 * Date:2016/10/8
 * Mail:11867939@qq.com
 */
public interface AboutService {

    AboutModel getAboutInfo();

    Aboutourteam add(AboutModel model);
}
