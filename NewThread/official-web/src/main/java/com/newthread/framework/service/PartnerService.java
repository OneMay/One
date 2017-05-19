package com.newthread.framework.service;

import com.newthread.entity.Teampartner;

import java.util.List;

/**
 * Author:黄平财
 * Date:2016/10/15
 * Mail:11867939@qq.com
 */
public interface PartnerService {

    List<Teampartner> select(Integer n, Integer i);

    int add(Teampartner teampartner);
}
