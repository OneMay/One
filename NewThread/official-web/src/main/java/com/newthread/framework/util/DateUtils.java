package com.newthread.framework.util;

import java.text.SimpleDateFormat;
import java.time.Instant;
import java.util.Calendar;
import java.util.Date;

/**
 * Created by huangpingcaigege on 2016/5/19.
 */
public class DateUtils {

    private static SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    private static SimpleDateFormat d = new SimpleDateFormat("yyyy-MM-dd");
    private static SimpleDateFormat t = new SimpleDateFormat("HH:mm:ss");

    /**
     * 将当前时间转换成String类型，用于更新用户表最后登录时间
     * @return
     */
    public static String Now2String(){
        Date date = Calendar.getInstance().getTime();
        return f.format(date);
    }

    public static String dateTime2String(Date d){
        return d == null ? null : f.format(d);
    }

    public static String date2String(Date dd){
        return dd == null ? null : d.format(dd);
    }

    public static String time2String(Date d){
        return d == null ? null : t.format(d);
    }

    public static long getTimeStamp(){
        return Instant.now().getEpochSecond();
    }
}
