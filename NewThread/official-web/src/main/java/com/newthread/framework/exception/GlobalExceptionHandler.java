package com.newthread.framework.exception;

import com.mysql.jdbc.exceptions.MySQLSyntaxErrorException;
import com.newthread.framework.util.MessageMaker;
import org.apache.log4j.Logger;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authz.UnauthorizedException;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.method.annotation.MethodArgumentTypeMismatchException;
import org.springframework.web.multipart.MultipartException;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.NoHandlerFoundException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;

/**
 * Author:pingcai
 * Date:16-10-14
 * Mail:11867939@qq.com
 */
public class GlobalExceptionHandler implements HandlerExceptionResolver {

    private final Logger logger = Logger.getLogger(this.getClass());

    // TODO: 16-10-14 可在此扩展异常记录日志(可选)

    @ResponseBody
    public ModelAndView resolveException(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) {

        response.setContentType("application/json;charset=utf-8");
        ex.printStackTrace();

        if (ex instanceof UnauthorizedException) {
            printWrite(MessageMaker.makeJson(null, "无权操作！", null), response);
        } else if (ex instanceof MultipartException) {
            printWrite(MessageMaker.makeJson(null, "表单提交有误！", ex.getMessage()), response);
        } else if (ex instanceof NumberFormatException || ex instanceof MethodArgumentTypeMismatchException) {
            printWrite(MessageMaker.makeJson(null, "请输入正确的参数！", null), response);
        } else if (ex instanceof MethodArgumentNotValidException) {
            printWrite(MessageMaker.makeJson(null, "参数不合法！", ex.getMessage()), response);
        } else if (ex instanceof NoHandlerFoundException) {
            printWrite(MessageMaker.makeJson(null, "找不到资源！", null), response);
        } else if (ex instanceof MySQLSyntaxErrorException) {
            printWrite(MessageMaker.makeJson(null, "年轻人不要搞事我跟你讲！", null), response);
        } else if (ex instanceof UnknownAccountException || ex instanceof IncorrectCredentialsException) {
            printWrite(MessageMaker.makeJson(null, "账号密码有误！", null), response);
        } else {
            printWrite(MessageMaker.makeJson(null, "发生了什么，我为什么在这里，人活着的意义是什么，宇宙的尽头在哪里？", ex.getMessage()), response);
        }
        return null;
    }

    public void printWrite(String msg, HttpServletResponse response) {
        try {
            PrintWriter pw = response.getWriter();
            pw.write(msg);
            pw.flush();
            pw.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
