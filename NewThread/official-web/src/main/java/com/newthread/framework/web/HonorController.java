package com.newthread.framework.web;

import com.newthread.entity.Honor;
import com.newthread.framework.service.HonorService;
import com.newthread.framework.util.MessageMaker;
import com.newthread.model.HonorModel;
import org.apache.log4j.Logger;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

/**
 * Author:huangpingcaigege
 * Date:2016/10/8
 * Mail:11867939@qq.com
 */
@RestController
public class HonorController {

    private final Logger logger = Logger.getLogger(this.getClass());

    @Resource
    private HonorService honorService;

    /**
     * @param n 第几页
     * @param s 每页大小
     */
    @RequestMapping(value = "/honor/g.do", method = RequestMethod.GET)
    public Object getAllHonor(
            @RequestParam(required = false) Integer n,
            @RequestParam(required = false) Integer s) {

        if (null == n || n.intValue() < 0) {
            n = 1;
        }
        //为空每页就十条
        if (null == s || s.intValue() < 0) {
            s = 10;
        }

        HonorModel model = honorService.select(n, s);

        if (model == null) {
            return MessageMaker.make("E01", "无记录！", null);
        }

        return model;
    }

    /**
     * @param s 每页大小 默认 10条
     * @param t 类型，空或不匹配则默认获取所有类型列表
     * @param n 第几页
     */
    @RequestMapping(value = "/honor/gbt.do", method = RequestMethod.GET)
    public Object getHonorByType(
            @RequestParam(required = false) Integer t,
            @RequestParam(required = false) Integer s,
            @RequestParam(required = false) Integer n) {

        if (t == null || t.intValue() < 0) {
            t = -1;
        }

        if (n == null || n < 0) {
            n = 1;
        }

        if (s == null || s < 0) {
            s = 10;
        }

        logger.info("查询类型:" + t + "\t\t查询数量:" + n + "\t\t大小:" + s);

        HonorModel model = honorService.getHonorByType(t, n, s);

        if (model == null) {
            return MessageMaker.make("E01", "数据库无记录！", null);
        }

        return model;
    }


    /**
     * 通过新闻SID 获取一篇荣誉的详细信息
     *
     * @param id 新闻的SID
     * @return
     */
    @RequestMapping(value = "/honor/gbs.do", method = RequestMethod.GET)
    public Object getHonor(@RequestParam Integer id) {

        Honor model = honorService.getHonorBySid(id);

        if (model == null || model.getHonorType() == null) {
            return MessageMaker.make("E01", "数据库无记录！", null);
        }
        return model;
    }

}
