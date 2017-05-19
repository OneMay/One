package com.newthread.model;

/**
 * Created by pingcai on 2017/2/24.
 */
public class SearchInput {

    private String value; //搜索的内容
    private String type; //搜索内容的类型
    private String time; // 日期范围 格式： xxxx:xx:xx-xxx:xx:xx

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }
}
