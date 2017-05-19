package com.newthread.framework.web;

import com.newthread.entity.Teampartner;
import com.newthread.framework.service.PartnerService;
import com.newthread.framework.util.MessageMaker;
import org.apache.log4j.Logger;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

/**
 * Author:huangpingcaigege
 * Date:2016/10/8
 * Mail:11867939@qq.com
 */
@RestController
@RequestMapping("/partner")
public class PartnerController {

    private final Logger logger = Logger.getLogger(this.getClass());

    @Resource
    private PartnerService partnerService;

    /**
     * 获取合作伙伴
     * @param n 获取数量,默认是5个
     * @param i 是否忽略失效的合作伙伴 0 为 不管是有效失效都选出来,1为有效,默认有效
     */
    @RequestMapping(value = "p.do")
    public Object getPartner(Integer n,Integer i){

        //默认获取5条
        if(null == n || n.intValue() < 0){
            n = 5;
        }
        //默认有效
        if(null == i || i.intValue() < 0){
            i = 1;
        }

        List<Teampartner> list = partnerService.select(n,i);

        if(list == null || list.size() == 0){
            return MessageMaker.make("E01","无记录！",null);
        }

        return list;

    }


}
