package com.newthread.framework.web;

import com.newthread.entity.Aboutourteam;
import com.newthread.framework.service.AboutService;
import com.newthread.framework.service.RoleService;
import com.newthread.framework.service.UserService;
import com.newthread.framework.util.MessageMaker;
import com.newthread.model.AboutModel;
import com.newthread.model.Message;
import org.apache.log4j.Logger;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

/**
 * 关于我们的控制器，
 * Author:huangpingcaigege
 * Date:2016/10/8
 * Mail:11867939@qq.com
 */
@RestController
public class AboutController {

    private final Logger logger = Logger.getLogger(this.getClass());

    @Resource
    private AboutService aboutService;

    @Resource
    private UserService userService;

    @Resource
    private RoleService roleService;

    /**
     * 获取关于我们的接口
     *
     * @return json实体
     */
    @RequestMapping(value = "/about",method = RequestMethod.GET)
    public Object info() {

        AboutModel model = aboutService.getAboutInfo();

        if (model == null) {
            return MessageMaker.make("E01", "数据库无记录！", null);
        }
        return model;
    }


    @RequestMapping(value = "/about",method = RequestMethod.POST)
    public Object update(@RequestBody(required = false) AboutModel model) {

        Subject subject = SecurityUtils.getSubject();

        Message c = new Message();

        if (subject.hasRole(roleService.selectAdmin())) {
            Aboutourteam aboutourteam = aboutService.add(model);
            if (aboutourteam != null) {
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
