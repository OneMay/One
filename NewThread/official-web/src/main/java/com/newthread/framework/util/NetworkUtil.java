package com.newthread.framework.util;

import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;

/**
 * Created by pingcai on 17-4-10.
 */
public class NetworkUtil {

    /**
     * 发起网络请求，并对比返回结果，
     * 如请求一个url，判断是不是该类型的文件：ww.baidu.com/1.img 返回一张图片，匹配image/.*
     * @param p 路径
     * @param pattern http协议的content-type
     */
    public static boolean requestMatchType(String p,String pattern,int timeout){

        if(p == null || pattern == null){
            return  false;
        }

        URLConnection con = null;
        URL  url = null;
        try {
            url = new URL(p);
            con.setConnectTimeout(timeout);
            con = url.openConnection();
            if (con.getContentType().matches(pattern)) {
                return true;
            }
        } catch (MalformedURLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return false;
    }


}
