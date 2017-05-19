package com.newthread.framework.web;

import com.newthread.framework.service.GeneralService;
import com.newthread.framework.util.MessageMaker;
import com.newthread.model.SearchInput;
import com.newthread.model.SearchModel;
import org.apache.log4j.Logger;
import org.springframework.context.ApplicationContext;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

/**
 * Created by huangpingcaigege on 2016/5/30.
 */
@RestController
@RequestMapping("/error")
public class GeneralController {

    private final Logger logger = Logger.getLogger(this.getClass());

    @Resource
    private ApplicationContext context;

    @Resource
    private GeneralService generalService;

    @RequestMapping("/login.do")
    @ResponseBody
    public Object login() {
        return MessageMaker.make(null, "请先登录！", null);
    }


    @RequestMapping("/unauthorized.do")
    @ResponseBody
    public Object unauthorized() {
        return MessageMaker.make(null, "权限不足！", null);
    }

    //todo 全局搜索接口

    /**
     * 搜索接口
     * 这里进行全局搜索
     * <p>
     * 实现方法有3
     * 1. 数据库 like，这里会有 SQL 注入的风险
     * 2. lucene
     * 3. 利用搜索引擎 爬取自己的网站
     * <p>
     *
     * @return
     */
    @RequestMapping("/s.do")
    @ResponseBody
    public Object s(@RequestParam(required = false) SearchInput searchInput) {

        SearchModel mode = generalService.search(searchInput);

        if (null == mode) {
            return MessageMaker.make(null, "请输入关键字！", null);
        }

        return mode;
    }

}
