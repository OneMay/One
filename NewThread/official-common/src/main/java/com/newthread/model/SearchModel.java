package com.newthread.model;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by pingcai on 2017/2/24.
 */
public class SearchModel {

    private int curPage;//当前页
    private int totalPage; //共几页
    private int totalRecode; //总记录
    private int pageSize;//每页大小

    private List<SearchResult> list;

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

    public List<SearchResult> getList() {
        return list;
    }

    public void setList(List<SearchResult> list) {
        this.list = list;
    }
}

class SearchResult {
    private Integer id;
    private String title;
    private String link;
    private String time;
}