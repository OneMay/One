package com.newthread.framework.util;

import com.newthread.model.Message;

/**
 * Author:pingcai
 * Date:16-10-14
 * Mail:11867939@qq.com
 */
public class MessageMaker {

    private MessageMaker(){}

    public static Message make(String code,String content,Object mark){
        return new Message(code,content,mark);
    }

    public static String makeJson(String code,String content,String mark){
        return StringUtil.obj2json(new Message(code,content,mark));
    }

}
