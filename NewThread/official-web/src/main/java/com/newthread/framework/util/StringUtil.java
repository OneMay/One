package com.newthread.framework.util;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.security.MessageDigest;

/**
 * Author:pingcai
 * Date:16-9-12
 * Mail:11867939@qq.com
 */
public class StringUtil {

    private static char hexDigits[] = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    private static String[] images = {"image/png", "image/jpg", "image/webp", "image/*"};
    private static ObjectMapper mapper;

    static {
        mapper = new ObjectMapper();
    }

    /**
     * 对象转字符串
     *
     * @param obj
     * @return
     */
    public static String obj2json(Object obj) {

        String str = null;

        try {
            str = mapper.writeValueAsString(obj);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }
        return str;
    }

    private StringUtil() {
    }

    ;

    /**
     * 获取字符串MD5
     *
     * @param s
     * @return
     */
    public final static String getMD5(String s) {

        try {
            byte[] btInput = s.getBytes();
            // 获得MD5摘要算法的 MessageDigest 对象
            MessageDigest mdInst = MessageDigest.getInstance("MD5");
            // 使用指定的字节更新摘要
            mdInst.update(btInput);
            // 获得密文
            byte[] md = mdInst.digest();
            // 把密文转换成十六进制的字符串形式
            int j = md.length;
            char str[] = new char[j * 2];
            int k = 0;
            for (int i = 0; i < j; i++) {
                byte byte0 = md[i];
                str[k++] = hexDigits[byte0 >>> 4 & 0xf];
                str[k++] = hexDigits[byte0 & 0xf];
            }
            return new String(str);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static boolean isNumber(String str) {

        if (isEmpty(str)) {
            return false;
        }

        for (int i = str.length(); --i >= 0; ) {
            if (!Character.isDigit(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static boolean isEmpty(String code) {
        if (null == code || code.equals("") || code.matches("\\s*")) {
            return true;
        }
        return false;
    }

    /**
     * 过滤掉一些非法字符
     *
     * @param string
     * @return
     */
    public static String defendSQLInject(String string) {
        if (isEmpty(string)) {
            return null;
        }
        return string.replaceAll("'", "").replaceAll("drop", "").replaceAll("delete", "").replaceAll("select", "");
    }

}
