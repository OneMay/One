package com.newthread.model;

import java.io.Serializable;
import java.util.Date;

/**
 * Created by Alan on 2016/11/15.
 */
public class FileModel implements Serializable {

    private Integer fileType;  //服务器生成

    private String fileOriginName;

    private String fileName;

    private String filePath; //服务器生成

    private String fileComment;

    private Date fileUploadTime; //服务器生成

    private Long fileTimestamp; //服务器生成

    private String userAccount; //服务器生成

    private String fileNote;


    public FileModel() {
    }

    public FileModel(Integer fileType, String fileOriginName, String fileName, String filePath, String fileComment, Date fileUploadTime, Long fileTimestamp, String userAccount, String fileNote) {
        this.fileType = fileType;
        this.fileOriginName = fileOriginName;
        this.fileName = fileName;
        this.filePath = filePath;
        this.fileComment = fileComment;
        this.fileUploadTime = fileUploadTime;
        this.fileTimestamp = fileTimestamp;
        this.userAccount = userAccount;
        this.fileNote = fileNote;
    }

    public Integer getFileType() {
        return fileType;
    }

    public void setFileType(Integer fileType) {
        this.fileType = fileType;
    }

    public String getFileOriginName() {
        return fileOriginName;
    }

    public void setFileOriginName(String fileOriginName) {
        this.fileOriginName = fileOriginName;
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public String getFilePath() {
        return filePath;
    }

    public void setFilePath(String filePath) {
        this.filePath = filePath;
    }

    public String getFileComment() {
        return fileComment;
    }

    public void setFileComment(String fileComment) {
        this.fileComment = fileComment;
    }

    public Date getFileUploadTime() {
        return fileUploadTime;
    }

    public void setFileUploadTime(Date fileUploadTime) {
        this.fileUploadTime = fileUploadTime;
    }

    public String getUserAccount() {
        return userAccount;
    }

    public void setUserAccount(String userAccount) {
        this.userAccount = userAccount;
    }

    public String getFileNote() {
        return fileNote;
    }

    public void setFileNote(String fileNote) {
        this.fileNote = fileNote;
    }

    public Long getFileTimestamp() {
        return fileTimestamp;
    }

    public void setFileTimestamp(Long fileTimestamp) {
        this.fileTimestamp = fileTimestamp;
    }

    @Override
    public String toString() {
        return "FileModel{" +
                "fileType=" + fileType +
                ", fileOriginName='" + fileOriginName + '\'' +
                ", fileName='" + fileName + '\'' +
                ", filePath='" + filePath + '\'' +
                ", fileComment='" + fileComment + '\'' +
                ", fileUploadTime=" + fileUploadTime +
                ", fileTimestamp=" + fileTimestamp +
                ", userAccount='" + userAccount + '\'' +
                ", fileNote='" + fileNote + '\'' +
                '}';
    }
}
