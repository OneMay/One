package com.newthread.entity;

import java.io.Serializable;

/**
 * 职务字典表
 */
public class Job implements Serializable {

    private Integer jobSid;

    private String jobNumber;

    private String jobName;

    private String jobNote;

    public Job(Integer jobSid, String jobNumber, String jobName, String jobNote) {
        this.jobSid = jobSid;
        this.jobNumber = jobNumber;
        this.jobName = jobName;
        this.jobNote = jobNote;
    }

    public Job() {
        super();
    }

    public Integer getJobSid() {
        return jobSid;
    }

    public void setJobSid(Integer jobSid) {
        this.jobSid = jobSid;
    }

    public String getJobNumber() {
        return jobNumber;
    }

    public void setJobNumber(String jobNumber) {
        this.jobNumber = jobNumber == null ? null : jobNumber.trim();
    }

    public String getJobName() {
        return jobName;
    }

    public void setJobName(String jobName) {
        this.jobName = jobName == null ? null : jobName.trim();
    }

    public String getJobNote() {
        return jobNote;
    }

    public void setJobNote(String jobNote) {
        this.jobNote = jobNote == null ? null : jobNote.trim();
    }
}