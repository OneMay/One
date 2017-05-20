package com.newthread.framework.util;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.Properties;

/**
 * Created by huangpingcaigege on 2016/5/8.
 */
public class ConfigReader {

    private static InputStream in = null;
    private static Properties prop;

    static {
        loadProperties(null);
    }

    private static void loadProperties(String fileName) {
        fileName = fileName == null ? "config.properties" : fileName;
        prop = new Properties();
        in = ConfigReader.class.getClassLoader().getResourceAsStream(fileName);
        try {
            prop.load(in);
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                in.close();
            } catch (IOException e) {
                e.printStackTrace();
            }

        }
    }

    /**
     * @param fileName 指定配置文件，传入null默认加载config.properties
     * @param key      键
     * @return 值
     */
    public static String getValue(String fileName, String key) {

        if (fileName != null) {
            loadProperties(fileName);
        }

        String value = prop.getProperty(key);

        return value;
    }


    /**
     * 获取配置值
     *
     * @param key
     * @return
     */
    public static String getValue(String key) {
        return getValue(null, key);
    }

    public static String getFileStorePath() {
        return getValue("file_save_path");
    }

    /**
     * 多个属性以,分开
     * @param allowHost
     */
    public static void getValueArray(String key,List<String> allowHost) {
        String res = getValue(key);
        if(res != null && res.length() > 0){
            for(String s : res.split(",")){
                allowHost.add(s);
            }
        }
    }
}
