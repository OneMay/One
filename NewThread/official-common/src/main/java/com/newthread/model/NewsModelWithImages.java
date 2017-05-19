package com.newthread.model;

import java.util.Date;
import java.util.List;

/**
 * Created by pingcai on 17-5-14.
 */

public class NewsModelWithImages {
    private Integer newsSid;

    private String newsTitle;

    private List<String> newsPicture;

    private String newsType;

    private String newsAuthor;

    private Integer newsReaders;

    private Date newsTime;

    private Integer newsTimesstamp;

    private String newsContend;

    private String newsNote;

    public Integer getNewsSid() {
        return newsSid;
    }

    public void setNewsSid(Integer newsSid) {
        this.newsSid = newsSid;
    }

    public String getNewsTitle() {
        return newsTitle;
    }

    public void setNewsTitle(String newsTitle) {
        this.newsTitle = newsTitle;
    }

    public List<String> getNewsPicture() {
        return newsPicture;
    }

    public void setNewsPicture(List<String> newsPicture) {
        this.newsPicture = newsPicture;
    }

    public String getNewsType() {
        return newsType;
    }

    public void setNewsType(String newsType) {
        this.newsType = newsType;
    }

    public String getNewsAuthor() {
        return newsAuthor;
    }

    public void setNewsAuthor(String newsAuthor) {
        this.newsAuthor = newsAuthor;
    }

    public Integer getNewsReaders() {
        return newsReaders;
    }

    public void setNewsReaders(Integer newsReaders) {
        this.newsReaders = newsReaders;
    }

    public Date getNewsTime() {
        return newsTime;
    }

    public void setNewsTime(Date newsTime) {
        this.newsTime = newsTime;
    }

    public Integer getNewsTimesstamp() {
        return newsTimesstamp;
    }

    public void setNewsTimesstamp(Integer newsTimesstamp) {
        this.newsTimesstamp = newsTimesstamp;
    }

    public String getNewsContend() {
        return newsContend;
    }

    public void setNewsContend(String newsContend) {
        this.newsContend = newsContend;
    }

    public String getNewsNote() {
        return newsNote;
    }

    public void setNewsNote(String newsNote) {
        this.newsNote = newsNote;
    }

    @Override
    public String toString() {
        return "NewsModelWithImages{" +
                "newsSid=" + newsSid +
                ", newsTitle='" + newsTitle + '\'' +
                ", newsPicture=" + newsPicture +
                ", newsType='" + newsType + '\'' +
                ", newsAuthor='" + newsAuthor + '\'' +
                ", newsReaders=" + newsReaders +
                ", newsTime=" + newsTime +
                ", newsTimesstamp=" + newsTimesstamp +
                ", newsContend='" + newsContend + '\'' +
                ", newsNote='" + newsNote + '\'' +
                '}';
    }
}
