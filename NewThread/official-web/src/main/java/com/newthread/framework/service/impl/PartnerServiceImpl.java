package com.newthread.framework.service.impl;

import com.newthread.entity.Teampartner;
import com.newthread.framework.mapper.TeampartnerMapper;
import com.newthread.framework.service.PartnerService;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Author:黄平财
 * Date:2016/10/8
 * Mail:11867939@qq.com
 */
@Service
@CacheConfig(cacheNames = "one_month")
public class PartnerServiceImpl implements PartnerService {

    @Resource
    private TeampartnerMapper mapper;

    @Cacheable(key = "'partner_' + #n + #i",unless = "#result == null")
    public List<Teampartner> select(Integer n, Integer i) {

        List<Teampartner> list = null;

        //0为都选出来
        if(i == 0){
            list = mapper.selectIgnore(n,i);
        }else{
            //1就直选有效的
            list = mapper.select(n,i);
        }


        if(list.size() == 0){
            return null;
        }

        return list;
    }

    @Override
    public int add(Teampartner teampartner) {
        return mapper.insert(teampartner);
    }
}
