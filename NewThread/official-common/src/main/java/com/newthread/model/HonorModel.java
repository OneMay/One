package com.newthread.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * Author:pingcai
 * Date:16-10-14
 * Mail:11867939@qq.com
 */
public class HonorModel implements Serializable{

    private int curPage;//当前页
    private int totalPage; //共几页
    private int totalRecode;
    private int pageSize;//每页大小
    private List<Honor> list;

    public HonorModel(){
        list = new ArrayList<Honor>();
    }

    public void add(Honor h){
        list.add(h);
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

    public List<Honor> getList() {
        return list;
    }

    public void setList(List<Honor> list) {
        this.list = list;
    }

    public int size(){
        return list.size();
    }

    public Honor get(int i) {
        return list.get(i);
    }



    public static class Honor implements Serializable{

        private Integer honorSid;

        private String hornorTitle;

        private String honorPicture;

        private String honerTime;

        private String honerType;

        private Integer honorTimesstamp;

        private String honorIntroduce;

        private String honorNote;

        public String getHornorTitle() {
            return hornorTitle;
        }

        public void setHornorTitle(String hornorTitle) {
            this.hornorTitle = hornorTitle;
        }

        public Integer getHonorSid() {
            return honorSid;
        }

        public void setHonorSid(Integer honorSid) {
            this.honorSid = honorSid;
        }

        public String getHonorPicture() {
            return honorPicture;
        }

        public void setHonorPicture(String honorPicture) {
            this.honorPicture = honorPicture;
        }

        public String getHonerTime() {
            return honerTime;
        }

        public void setHonerTime(String honerTime) {
            this.honerTime = honerTime;
        }

        public String getHonerType() {
            return honerType;
        }

        public void setHonerType(String honerType) {
            this.honerType = honerType;
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

}
