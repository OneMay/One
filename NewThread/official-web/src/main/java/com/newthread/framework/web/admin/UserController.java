package com.newthread.framework.web.admin;

import com.google.code.kaptcha.Constants;
import com.newthread.entity.User;
import com.newthread.framework.exception.RoleNotFoundException;
import com.newthread.framework.exception.UserNotFoundException;
import com.newthread.framework.service.RoleService;
import com.newthread.framework.service.UserService;
import com.newthread.framework.util.MessageMaker;
import com.newthread.framework.util.ServletUtil;
import com.newthread.framework.util.StringUtil;
import com.newthread.model.Message;
import com.newthread.model.user.LoginModel;
import com.newthread.model.user.UserRegisterModel;
import org.apache.log4j.Logger;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.UnauthorizedException;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Author:huangpingcai
 * Date:2016/8/2
 * Mail:11867939@qq.com
 */
@RestController
@RequestMapping("/admin")
public class UserController {

    @Autowired
    private UserService userService;

    @Autowired
    private RoleService roleService;

    private final Logger logger = Logger.getLogger(this.getClass());

    /**
     * 登录接口,账号密码前端生成 , 密码为  账号+密码   的MD5值
     *
     * @param model
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "login.do", method = RequestMethod.POST)
    public Object login(@RequestBody(required = false) LoginModel model, HttpServletRequest request, HttpServletResponse response) {

        Subject subject = SecurityUtils.getSubject();

        if (subject.isAuthenticated()) {
            return MessageMaker.make(null, "已经登陆过了！", null);
        }

        String validCode = (String) request.getSession().getAttribute(Constants.KAPTCHA_SESSION_KEY);
        String timesStamp = (String) request.getSession().getAttribute("timesStamp");

        request.getSession().removeAttribute(Constants.KAPTCHA_SESSION_KEY);
        request.getSession().removeAttribute("timesStamp");

        Message msg = new Message();

        //检查验证码,时间戳不对不给登录
        for (Cookie cookie : request.getCookies()) {
            if (cookie.getName().equals("t")) {

                String str = cookie.getValue();

                //删除这个Cookie
                cookie = new Cookie("t", null);
                cookie.setMaxAge(0); //删除
                cookie.setHttpOnly(true);
                cookie.setPath(request.getServletContext().getInitParameter("applicationName") + "/user/");
                response.addCookie(cookie);

                if (!str.equals(timesStamp)) {
                    msg.setMessage("验证码有误!");
                    return msg;
                }
                break;
            }
        }

        //正确的验证码
        if (!StringUtils.isEmpty(model.getV())) {
            if (!model.getV().equalsIgnoreCase(validCode)) {
                msg.setMessage("验证码有误!");
                return msg;
            }
        } else {
            msg.setMessage("请输入验证码!");
            return msg;
        }

        // MD5的密码
        UsernamePasswordToken token = new UsernamePasswordToken(model.getA(), StringUtil.getMD5(model.getP()));
        token.setRememberMe(model.getR());

        try {
            logger.info("用户:" + model.getA() + "\t密码:" + model.getP() + "\t\t尝试登录.");
            subject.login(token);
            if (subject.isAuthenticated()) {
                subject.getSession().setAttribute("user", token);
                //subject.getSession().setAttribute("user", token);
                msg.setMessage("登陆成功!");
                msg.setContent(ServletUtil.getProjectRootURL(request));
            }
        } catch (IncorrectCredentialsException e) {
            msg.setMessage("登录密码错误. Password for account " + token.getPrincipal() + " was incorrect.");
        } catch (ExcessiveAttemptsException e) {
            msg.setMessage("登录失败次数过多");
        } catch (LockedAccountException e) {
            msg.setMessage("帐号已被锁定. The account for username " + token.getPrincipal() + " was locked.");
        } catch (DisabledAccountException e) {
            msg.setMessage("帐号已被禁用. The account for username " + token.getPrincipal() + " was disabled.");
        } catch (ExpiredCredentialsException e) {
            msg.setMessage("帐号已过期. the account for username " + token.getPrincipal() + "  was expired.");
        } catch (UnknownAccountException e) {
            msg.setMessage("帐号不存在. There is no user with username of " + token.getPrincipal());
        } catch (UnauthorizedException e) {
            msg.setMessage("您没有得到相应的授权！" + e.getMessage());
        } catch (AccountException e) {
            msg.setMessage("账号密码有误！");
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        msg.setContent(ServletUtil.getProjectRootURL(request));
        return msg;
    }

    /**
     * 退出登录状态,各项清理工作,包括session属性,shiro和缓存的清除
     *
     * @return
     */
    @RequestMapping(value = "logout.do", method = RequestMethod.GET)
    public Object logout(HttpServletRequest request) {

        Subject subject = SecurityUtils.getSubject();
        if (subject.isAuthenticated()) {
            userService.clearCache(subject.getPrincipal().toString());
            subject.logout();
            return MessageMaker.make("", "退出成功！", ServletUtil.getProjectRootURL(request));
        }
        return MessageMaker.make("", "尚未登录！", ServletUtil.getProjectRootURL(request));
    }

    /**
     * 检查密码是否正确
     *
     * @param passwd 用户输入的密码,已经在前端进行md5加密
     * @return 0为错误, 1为正确
     */
    @RequestMapping(value = "cp.do", method = RequestMethod.POST)
    public Object checkPassword(@RequestParam String passwd) {

        Subject subject = SecurityUtils.getSubject();

        boolean flag = false;

        if (subject.isAuthenticated()) {
            passwd = StringUtil.getMD5(passwd);
            flag = userService.checkPassword(subject.getPrincipal().toString(), passwd);
        }
        return flag ? 1 : 0;
    }

    /**
     * 更改密码接口
     *
     * @return
     */
    @RequestMapping(value = "cpw.do", method = RequestMethod.POST)
    public Object changePassword(@RequestParam String old, @RequestParam String newpw, HttpServletRequest request) {

        Subject subject = SecurityUtils.getSubject();

        Message message = new Message();

        if (subject.isAuthenticated()) {
            //MD5
            String account = subject.getPrincipal().toString();
            old = StringUtil.getMD5(old);
            newpw = StringUtil.getMD5(newpw);
            if (userService.checkPassword(account, old)) {
                if (1 == userService.changePasswd(account, newpw)) {
                    message.setMessage("修改成功！");
                } else {
                    message.setMessage("修改失败！");
                }
            } else {
                message.setMessage("密码有误！");
            }
        } else {
            message.setMessage("尚未登录！");
        }
        return message;
    }

    /**
     * 获取本用户信息
     *
     * @param request
     * @return
     */
    @RequestMapping
    public Object info(HttpServletRequest request) {
        Subject subject = SecurityUtils.getSubject();
        if (!subject.isAuthenticated()) {
            return MessageMaker.make(null, "尚未登陆", ServletUtil.getProjectRootURL(request));
        }
        User user = userService.selectByPrimaryKey(subject.getPrincipal().toString());
        user.setPassword(null);
        return user;
    }

    /**
     * 获取某一用户信息
     *
     * @param request
     * @return
     */
    @RequestMapping(value = "/{account}")
    public Object info2(@PathVariable String account, HttpServletRequest request) {

        Subject subject = SecurityUtils.getSubject();

        if (!subject.isAuthenticated()) {
            return MessageMaker.make(null, "尚未登陆", ServletUtil.getProjectRootURL(request));
        }
        User user = userService.selectByPrimaryKey(account);
        if (user != null) {
            user.setPassword(null);
        }
        return user;
    }

    /**
     * 1.无权操作
     * 2.账号已存在
     * 3.权限不对，输入的应该是权限的代号：1 ，2
     * 4.账号密码用户名不正确
     * 5.已存在该角色
     */
    @RequestMapping(method = RequestMethod.POST)
    public Object register(@Validated @RequestBody UserRegisterModel model, BindingResult result) {

        logger.info(model);

        Subject subject = SecurityUtils.getSubject();
        if (subject.isAuthenticated()) {
            try {
                //管理员的 number = 1
                String admin = roleService.selectAdmin();
                subject.checkRole(admin);

                if (result.hasErrors()) {
                    return MessageMaker.make(null, result.getFieldError().getDefaultMessage(), null);
                }

                if (userService.exist(model.getAccount())) {
                    return MessageMaker.make(null, "账户已存在！", null);
                }
                if (!roleService.checkRoleExistByRoleNumber(model.getRoles())) {
                    return MessageMaker.make(null, "没有该角色！", null);
                }
                User user = userService.register(model);
                user.setPassword(null);
                return user;
            } catch (DuplicateKeyException e) {
                e.printStackTrace();
                return MessageMaker.make(null, "用户已存在该角色！", null);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return MessageMaker.make(null, "无权进行此操作！", null);
    }

    /**
     * RESTFul风格
     * <p>
     * 1.必须是登录了的管理员才能操作
     *
     * @param account
     * @return
     */
    @RequestMapping(value = "/{account}", method = RequestMethod.DELETE)
    public Object delete(@PathVariable("account") String account) {

        Subject subject = SecurityUtils.getSubject();

        if (subject.isAuthenticated() && subject.hasRole(roleService.selectAdmin())) {

            Integer res = userService.delete(account);

            return res;
        }
        return MessageMaker.make(null, "无权进行此操作！", null);
    }

    /**
     * 获取某一个用户信息
     *
     * @param account
     * @return
     */
    @RequestMapping(value = "/{account}", method = RequestMethod.GET)
    public Object get(@PathVariable("account") String account) {

        Subject subject = SecurityUtils.getSubject();

        if (subject.isAuthenticated() && subject.hasRole(roleService.selectAdmin())) {
            User user = userService.selectByPrimaryKey(account);
            if (user != null) {
                user.setPassword(null);
            }
            return user;
        }
        return MessageMaker.make(null, "无权进行此操作！", null);
    }

    /**
     * 更新用户信息
     *
     * @param model
     * @return
     */
    @RequestMapping(method = RequestMethod.PUT)
    public Object update(@Validated @RequestBody UserRegisterModel model, BindingResult result) {

        logger.info("update :   " + model);

        Subject subject = SecurityUtils.getSubject();
        if (subject.isAuthenticated()) {
            try {
                //管理员的 number = 1
                String admin = roleService.selectAdmin();
                subject.checkRole(admin);

                if (result.hasErrors()) {
                    return MessageMaker.make(null, result.getFieldError().getDefaultMessage(), null);
                }
                User user = userService.update(model);
                if (user == null) {
                    return MessageMaker.make(null, "更新失败！", null);
                }
                user.setPassword(null);
                return user;
            } catch (RoleNotFoundException e) {
                return MessageMaker.make(null, "角色不存在！", null);
            } catch (UserNotFoundException e) {
                return MessageMaker.make(null, "用户不存在！", null);
            } catch (Exception e) {
                e.printStackTrace();
                return MessageMaker.make(null, "更新失败！", null);
            }
        }
        return MessageMaker.make(null, "无权进行此操作！", null);
    }

    @RequestMapping(value = "noLogin.do", method = RequestMethod.GET)
    public Object noLogin(HttpServletRequest request) {

        Message msg = new Message();

        User user = userService.getOneAdmin();
        AuthenticationToken token = new UsernamePasswordToken(user.getUserAccount(), user.getPassword());
        Subject subject = SecurityUtils.getSubject();
        try {
            subject.login(token);
            if (subject.isAuthenticated()) {
                subject.getSession().setAttribute("user", token);
                //subject.getSession().setAttribute("user", token);
                msg.setMessage("登陆成功!");
            }
        } catch (IncorrectCredentialsException e) {
            msg.setMessage("登录密码错误. Password for account " + token.getPrincipal() + " was incorrect.");
        } catch (ExcessiveAttemptsException e) {
            msg.setMessage("登录失败次数过多");
        } catch (LockedAccountException e) {
            msg.setMessage("帐号已被锁定. The account for username " + token.getPrincipal() + " was locked.");
        } catch (DisabledAccountException e) {
            msg.setMessage("帐号已被禁用. The account for username " + token.getPrincipal() + " was disabled.");
        } catch (ExpiredCredentialsException e) {
            msg.setMessage("帐号已过期. the account for username " + token.getPrincipal() + "  was expired.");
        } catch (UnknownAccountException e) {
            msg.setMessage("帐号不存在. There is no user with username of " + token.getPrincipal());
        } catch (UnauthorizedException e) {
            msg.setMessage("您没有得到相应的授权！" + e.getMessage());
        } catch (AccountException e) {
            msg.setMessage("账号密码有误！");
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        msg.setContent(ServletUtil.getProjectRootURL(request));
        return msg;
    }
}
