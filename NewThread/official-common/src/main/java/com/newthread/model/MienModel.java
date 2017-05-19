package com.newthread.model;

import com.newthread.entity.Teammien;

import java.util.Date;

/**
 * Created by pingcai on 17-5-6.
 */
public class MienModel extends Teammien{

    private String thumb; //一张缩略图

    public MienModel(Integer mienSid, String mienTitle, Integer mienType, Date mienTime, Integer mienTimesstamp, String mienIntroduce, String mienNote, String thumb) {
        super(mienSid, mienTitle, mienType, mienTime, mienTimesstamp, mienIntroduce, mienNote);
        this.thumb = thumb;
    }

    public String getThumb() {
        return thumb;
    }

    public void setThumb(String thumb) {
        this.thumb = thumb;
    }
}
