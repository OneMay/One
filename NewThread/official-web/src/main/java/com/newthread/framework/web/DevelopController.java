package com.newthread.framework.web;

import com.newthread.entity.Teamdevelopment;
import com.newthread.framework.service.DevelopService;
import com.newthread.framework.service.RoleService;
import com.newthread.framework.util.MessageMaker;
import com.newthread.framework.util.ServletUtil;
import com.newthread.framework.util.StringUtil;
import com.newthread.model.DevelopModel;
import com.newthread.model.Message;
import org.apache.log4j.Logger;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

/**
 * Author:huangpingcaigege
 * Date:2016/10/8
 * Mail:11867939@qq.com
 */
@RestController
public class DevelopController {

    private final Logger logger = Logger.getLogger(this.getClass());

    @Resource
    private RoleService roleService;

    @Resource
    private DevelopService developService;

    /**
     * 获取发展简介的接口
     *
     * @param u
     * @return json实体
     */
    @RequestMapping(value = "/develop/info.do", method = RequestMethod.GET)
    public Object info(@RequestParam(required = false) String u, HttpServletRequest request) {

        String contextPath = ServletUtil.getProjectRootURL(request);

        DevelopModel model = null;

        if (StringUtil.isNumber(u) && Integer.parseInt(u) == 1) {
            model = developService.getNewestDevelopment();
        } else {
            model = developService.getDevelopment();
        }

        if (model == null) {
            return MessageMaker.make("E01", "数据库无记录！", contextPath);
        }
        return model;

    }

    /**
     * 更新发展简介，其实就是添加一条，
     *
     * @param model
     * @return
     */
    @RequestMapping(value = "/develop", method = RequestMethod.POST)
    public Object add(@RequestBody(required = false) DevelopModel model) {

        Subject subject = SecurityUtils.getSubject();

        Message c = new Message();

        if (subject.hasRole(roleService.selectAdmin())) {
            Teamdevelopment teamdevelopment = developService.add(model);
            if (teamdevelopment != null) {
                c.setMessage("更新成功！");
            } else {
                c.setMessage("更新失败！");
            }
        } else {
            c.setMessage("无权操作！");
        }
        return c;
    }

}



