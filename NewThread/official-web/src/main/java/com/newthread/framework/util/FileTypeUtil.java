package com.newthread.framework.util;

/**
 * Created by Alan on 2016/11/15.
 */
public class FileTypeUtil {

    public static int getType(String t){
        /**
         * 1: 文档文件
         * 2：图片文件
         * 3：生音文件
         * 4：动画文件
         */
        int num = 0;
        switch (t){
            case "txt":{
                num = 1;
                break;
            }
            case "doc":{
                num = 1;
                break;
            }
            case "hlp":{
                num = 1;
                break;
            }
            case "wps":{
                num = 1;
                break;
            }
            case "pdf":{
                num = 1;
                break;
            }
            case "bmp":{
                num = 2;
                break;
            }
            case "gif":{
                num = 2;
                break;
            }
            case "jpg":{
                num = 2;
                break;
            }
            case "pic":{
                num = 2;
                break;
            }
            case "png":{
                num = 2;
                break;
            }
            case "tif":{
                num = 2;
                break;
            }
            case "wav":{
                num = 3;
                break;
            }
            case "aif":{
                num = 3;
                break;
            }
            case "au":{
                num = 3;
                break;
            }
            case "mp3":{
                num = 3;
                break;
            }
            case "ram":{
                num = 3;
                break;
            }
            case "mpg":{
                num = 4;
                break;
            }
            case "mov":{
                num = 4;
                break;
            }
            case "swf":{
                num = 4;
                break;
            }
            case "avi":{
                num = 4;
                break;
            }
            default:{
                num = 0;
                break;
            }
        }
        return num;
    }
}
