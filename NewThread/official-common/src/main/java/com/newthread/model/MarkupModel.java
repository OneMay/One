package com.newthread.model;

import java.io.Serializable;

/**
 * Author:黄平财
 * Date:2016/10/9
 * Mail:11867939@qq.com
 */
public class MarkupModel implements Serializable{

    private String markupName;

    private String markupPicture; //头像

    private String markupJob; //职位

    private String markupAcademy; //学院

    private String markupMajor; //专业

    private String markupGrade; //年级

    private String markupGroup; //组别

    private Integer markupTimestamp;

    private String markupContent; //座右铭之类的东西

    private String markupNote; //备注

    public String getMarkupName() {
        return markupName;
    }

    public void setMarkupName(String markupName) {
        this.markupName = markupName;
    }

    public String getMarkupPicture() {
        return markupPicture;
    }

    public void setMarkupPicture(String markupPicture) {
        this.markupPicture = markupPicture;
    }

    public String getMarkupJob() {
        return markupJob;
    }

    public void setMarkupJob(String markupJob) {
        this.markupJob = markupJob;
    }

    public String getMarkupAcademy() {
        return markupAcademy;
    }

    public void setMarkupAcademy(String markupAcademy) {
        this.markupAcademy = markupAcademy;
    }

    public String getMarkupMajor() {
        return markupMajor;
    }

    public void setMarkupMajor(String markupMajor) {
        this.markupMajor = markupMajor;
    }

    public String getMarkupGrade() {
        return markupGrade;
    }

    public void setMarkupGrade(String markupGrade) {
        this.markupGrade = markupGrade;
    }

    public String getMarkupGroup() {
        return markupGroup;
    }

    public void setMarkupGroup(String markupGroup) {
        this.markupGroup = markupGroup;
    }

    public Integer getMarkupTimestamp() {
        return markupTimestamp;
    }

    public void setMarkupTimestamp(Integer markupTimestamp) {
        this.markupTimestamp = markupTimestamp;
    }

    public String getMarkupContent() {
        return markupContent;
    }

    public void setMarkupContent(String markupContent) {
        this.markupContent = markupContent;
    }

    public String getMarkupNote() {
        return markupNote;
    }

    public void setMarkupNote(String markupNote) {
        this.markupNote = markupNote;
    }
}
