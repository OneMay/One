package com.newthread.framework.web.admin;

import com.google.code.kaptcha.Constants;
import com.google.code.kaptcha.Producer;
import com.newthread.framework.service.UserService;
import com.newthread.framework.util.MessageMaker;
import org.apache.log4j.Logger;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.image.BufferedImage;
import java.io.IOException;

/**
 * Author:黄平财
 * Date:2016/10/18
 * Mail:11867939@qq.com
 */
@RestController
public class ValidController {

    private final Logger logger = Logger.getLogger(this.getClass());

    @Resource
    private Producer captchaProducer;

    @Resource
    private UserService userService;

    /**
     * 生成带验证码的图片
     *
     * @param request
     * @param response
     * @return
     * @throws IOException
     */
    @RequestMapping(value = "/i.jpg", method = RequestMethod.GET)
    public Object getCaptchaImage(HttpServletRequest request, HttpServletResponse response) throws IOException {

        String timesStamp = System.currentTimeMillis() + "";

        response.setDateHeader("Expires", 0);
        response.setHeader("Cache-Control", "no-store, no-cache, must-revalidate");
        response.addHeader("Cache-Control", "post-check=0, pre-check=0");
        response.setHeader("Pragma", "no-cache");
        response.setContentType("image/jpeg");

        Cookie cookie = new Cookie("t", timesStamp);
        cookie.setMaxAge(3600); //一分钟
        cookie.setHttpOnly(true);
        //访问这个校验验证码时才会带cookie
        cookie.setPath(request.getServletContext().getInitParameter("applicationName") + "/user/");
        response.addCookie(cookie);

        String capText = captchaProducer.createText();

        //放置属性,在检查验证码时使用
        request.getSession().setAttribute("timesStamp", timesStamp);
        request.getSession().setAttribute(Constants.KAPTCHA_SESSION_KEY, capText);

        logger.info("生成了一个验证码，内容为：" + capText);

        ServletOutputStream out = null;

        try {

            BufferedImage bi = captchaProducer.createImage(capText);
            out = response.getOutputStream();
            ImageIO.write(bi, "jpg", out);

            out.flush();
        } catch (Exception e) {
            e.printStackTrace();
            return MessageMaker.make(null, "验证码获取失败!", null);
        } finally {
            out.close();
        }
        return null;
    }

    /**
     * 此接口可提供给AJAX校验验证码,登录接口会再一次校验,可以无限校验
     *
     * @param c
     * @param request
     * @return 0 失败  1成功
     */
    @RequestMapping(value = "/c.do", method = RequestMethod.GET)
    public Integer checkCaptcha(@RequestParam(value = "c", required = false) String c, HttpServletRequest request, HttpServletResponse response) {

        String validCode = (String) request.getSession().getAttribute(Constants.KAPTCHA_SESSION_KEY);

        logger.info("用户输入的验证码：" + c);
        logger.info("正确的验证码：" + validCode);

        if (!StringUtils.isEmpty(c)) {
            if (c.equalsIgnoreCase(validCode)) {
                return 1; //验证码对了
            }
        }
        return 0;
    }
}
