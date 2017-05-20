package com.newthread.framework.filter;

import com.newthread.framework.util.ConfigReader;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by pingcai on 2017/5/19.
 * <p>
 * 跨域控制
 */
public class AccessControlAllowFilter implements Filter {

    List<String> allowHost = new ArrayList<>();

    public static final String ACCESS_ALLOW_HOST = "Access-Control-Allow-Origin";

    public static final String ACCESS_ALLOW_METHOD = "Access-Control-Allow-Methods";

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        ConfigReader.getValueArray(ACCESS_ALLOW_HOST, allowHost);
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;
        String origin = req.getHeader("Origin");//当前来源
        if (allowHost.contains(origin)) {
            res.setHeader(ACCESS_ALLOW_HOST, origin);
        } else {
            //res.setHeader(ACCESS_ALLOW_HOST, "http://127.0.0.1,http://localhost");
            res.setHeader(ACCESS_ALLOW_HOST, "*");
        }
        res.setHeader(ACCESS_ALLOW_METHOD, "GET,POST,PUT,UPDATE");
        chain.doFilter(request, response);
    }

    @Override
    public void destroy() {

    }
}
