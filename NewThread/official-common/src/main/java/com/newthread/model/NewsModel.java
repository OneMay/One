package com.newthread.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by liuzhe on 2016/10/14.
 */
public class NewsModel implements Serializable{

    private int curPage;//当前页
    private int totalPage; //共几页
    private int totalRecode;
    private int pageSize;//每页大小
    private List<News> list;

    public NewsModel() {
        list = new ArrayList<>();
    }

    public void add(News news) {
        list.add(news);
    }

    public static class News implements Serializable{

        private Integer newsSid;

        private String newsTitle;

        private String newsPicture;

        private String newsType;

        private String newsAuthor;

        private Integer newsReaders;

        private String newsTime;

        private String timeDate; //切割一下日期和时间

        private String timeTime;//切割一下日期和时间

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

        public String getNewsPicture() {
            return newsPicture;
        }

        public void setNewsPicture(String newsPicture) {
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

        public String getNewsTime() {
            return newsTime;
        }

        public void setNewsTime(String newsTime) {
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

        public String getTimeDate() {
            return timeDate;
        }

        public void setTimeDate(String timeDate) {
            this.timeDate = timeDate;
        }

        public String getTimeTime() {
            return timeTime;
        }

        public void setTimeTime(String timeTime) {
            this.timeTime = timeTime;
        }
    }

    public int getCurPage() {
        return curPage;
    }

    public void setCurPage(int curPage) {
        this.curPage = curPage;
    }

    public int getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    public int getTotalRecode() {
        return totalRecode;
    }

    public void setTotalRecode(int totalRecode) {
        this.totalRecode = totalRecode;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public List<News> getList() {
        return list;
    }

    public void setList(List<News> list) {
        this.list = list;
    }
}
