package com.newthread.framework.web.admin;

import com.newthread.framework.service.RoleService;
import com.newthread.framework.service.UserService;
import com.newthread.framework.util.MessageMaker;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authz.AuthorizationException;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import java.util.List;

/**
 * Author:黄平财
 * Date:2016/12/7
 * Mail:11867939@qq.com
 */
@Controller
@RequestMapping("/admin")
public class RoleController {

    @Resource
    private RoleService roleService;

    @Resource
    private UserService userService;

    /**
     * 1.只有管理员权限才能查询角色列表
     *
     * @return
     */
    @RequestMapping(value = "/g.do", method = RequestMethod.GET)
    public Object selectRole() {

        Subject subject = SecurityUtils.getSubject();


        if (subject.isAuthenticated()) {

            subject.checkRole(roleService.selectAdmin());

        }
        return null;
    }

    /**
     * 检查当前用户是否有相应权限
     *
     * @return 0 为 无  1为有
     */
    @RequestMapping(value = "/cpr.do", method = RequestMethod.GET)
    public Object checkPermission(@RequestParam String p) {

        Subject subject = SecurityUtils.getSubject();

        //已登录
        if (subject.isAuthenticated() || subject.isRemembered()) {
            //相应操作
            try {
                subject.checkPermissions(p);
                return 1;
            } catch (AuthorizationException e) {
                return 0;
            }
        }
        //没登录
        return MessageMaker.make(null, "尚未登录!", null);
    }

    /**
     * 获取当前用户的权限
     */
    @RequestMapping(value = "/gpr.do", method = RequestMethod.GET)
    public Object getPermission() {

        Subject subject = SecurityUtils.getSubject();

        //已登录
        if (subject.isAuthenticated() || subject.isRemembered()) {
            //相应操作
            List<String> list = userService.getAllPermission(subject.getPrincipal());
            return list == null || list.size() == 0 ? MessageMaker.make(null, "权限列表为空!", null) : list;
        }
        return MessageMaker.make(null, "无权进行此项操作!", null);
    }

}
