package com.newthread.entity;

import java.io.Serializable;
import java.util.Date;

public class Honor implements Serializable {

    private Integer honorSid;

    private String honorTitle;

    private String honorPicture;

    private Date honorTime;

    private String honorType;

    private Integer honorTimesstamp;

    private String honorIntroduce;

    private String honorNote;

    public Honor() {
    }

    public Honor(Integer honorSid, String honorTitle, String honorPicture, Date honerTime, String honerType, Integer honorTimesstamp, String honorIntroduce, String honorNote) {
        this.honorSid = honorSid;
        this.honorTitle = honorTitle;
        this.honorPicture = honorPicture;
        this.honorTime = honerTime;
        this.honorType = honerType;
        this.honorTimesstamp = honorTimesstamp;
        this.honorIntroduce = honorIntroduce;
        this.honorNote = honorNote;
    }

    public Integer getHonorSid() {
        return honorSid;
    }

    public void setHonorSid(Integer honorSid) {
        this.honorSid = honorSid;
    }

    public String getHonorTitle() {
        return honorTitle;
    }

    public void setHonorTitle(String honorTitle) {
        this.honorTitle = honorTitle;
    }

    public String getHonorPicture() {
        return honorPicture;
    }

    public void setHonorPicture(String honorPicture) {
        this.honorPicture = honorPicture;
    }

    public Date getHonorTime() {
        return honorTime;
    }

    public void setHonorTime(Date honorTime) {
        this.honorTime = honorTime;
    }

    public String getHonorType() {
        return honorType;
    }

    public void setHonorType(String honorType) {
        this.honorType = honorType;
    }

    public Integer getHonorTimesstamp() {
        return honorTimesstamp;
    }

    public void setHonorTimesstamp(Integer honorTimesstamp) {
        this.honorTimesstamp = honorTimesstamp;
    }

    public String getHonorIntroduce() {
        return honorIntroduce;
    }

    public void setHonorIntroduce(String honorIntroduce) {
        this.honorIntroduce = honorIntroduce;
    }

    public String getHonorNote() {
        return honorNote;
    }

    public void setHonorNote(String honorNote) {
        this.honorNote = honorNote;
    }
}