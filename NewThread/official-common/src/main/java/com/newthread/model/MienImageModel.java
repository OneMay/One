package com.newthread.model;

import java.util.Date;

/**
 * Created by pingcai on 2017/5/7.
 */
public class MienImageModel {

    private Integer imgSid;

    private String imgPath;

    private String imgComment;


    public MienImageModel(Integer imgSid, String imgPath, String imgComment) {
        this.imgSid = imgSid;
        this.imgPath = imgPath;
        this.imgComment = imgComment;
    }

    public Integer getImgSid() {
        return imgSid;
    }

    public void setImgSid(Integer imgSid) {
        this.imgSid = imgSid;
    }

    public String getImgPath() {
        return imgPath;
    }

    public void setImgPath(String imgPath) {
        this.imgPath = imgPath;
    }

    public String getImgComment() {
        return imgComment;
    }

    public void setImgComment(String imgComment) {
        this.imgComment = imgComment;
    }
}
