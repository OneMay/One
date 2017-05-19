package com.newthread.framework.util;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

/**
 * Author:黄平财
 * Date:2016/10/18
 * Mail:11867939@qq.com
 */
public class ServletUtil {

    private static String rootPath;
    private static String urlPort;

    private ServletUtil(){};

    /**
     * 获取预定义参数
     * @param servlet
     * @param name
     * @return
     */
    public static String getInitParameter(HttpServlet servlet,String name){
        return servlet.getServletConfig().getInitParameter(name);
    }

    public static String getProjectRootURL(HttpServletRequest request){
        if(rootPath == null){
            rootPath = request.getScheme() +"://" + request.getServerName()  + ":" +request.getServerPort() +request.getContextPath();
        }
        return rootPath;
    }

    public static String getServerURL(HttpServletRequest request){
        if(urlPort == null){
            urlPort = request.getScheme() +"://" + request.getServerName()  + ":" +request.getServerPort();
        }
        return urlPort;
    }

}
