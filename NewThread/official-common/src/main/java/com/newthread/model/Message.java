package com.newthread.model;

/**
 * Created by huangpingcaigege on 2016/6/3.
 * 回复消息的实体
 */
public class Message {

    private String code;
    private String message;
    private Object content;

    public Message() {
    }

    public Message(String code, String message, Object content) {
        this.code = code;
        this.message = message;
        this.content = content;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Object getContent() {
        return content;
    }

    public void setContent(Object content) {
        this.content = content;
    }
}
