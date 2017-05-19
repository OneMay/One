package com.newthread.model;

import java.io.Serializable;

/**
 * 发展情况的实体，通过service查询出最新的记录返回给前端
 * Author:黄平财
 * Date:2016/10/8
 * Mail:11867939@qq.com
 */
public class DevelopModel implements Serializable{

    private String developmentPicture;

    private Integer developmentTimesstamp;

    private String developmentContent;

    private String developmentNote;

    public String getDevelopmentPicture() {
        return developmentPicture;
    }

    public void setDevelopmentPicture(String developmentPicture) {
        this.developmentPicture = developmentPicture;
    }

    public Integer getDevelopmentTimesstamp() {
        return developmentTimesstamp;
    }

    public void setDevelopmentTimesstamp(Integer developmentTimesstamp) {
        this.developmentTimesstamp = developmentTimesstamp;
    }

    public String getDevelopmentContent() {
        return developmentContent;
    }

    public void setDevelopmentContent(String developmentContent) {
        this.developmentContent = developmentContent;
    }

    public String getDevelopmentNote() {
        return developmentNote;
    }

    public void setDevelopmentNote(String developmentNote) {
        this.developmentNote = developmentNote;
    }
}
