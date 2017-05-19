package com.newthread.entity;

import java.io.Serializable;

public class Teampartner implements Serializable {

    private Integer partnerSid;

    private Integer partnerValid; //判断这个合作伙伴是否有效 0是无效 1是有效

    private String partnerPicture;

    private String partnerLink;

    private Integer partnerTimesstamp;

    private String partnerIntroduce;

    private String partnerNote;

    public Teampartner() {
    }

    public Teampartner(Integer partnerSid, Integer partnerValid, String partnerPicture, String partnerLink, Integer partnerTimesstamp, String partnerIntroduce, String partnerNote) {
        this.partnerSid = partnerSid;
        this.partnerValid = partnerValid;
        this.partnerPicture = partnerPicture;
        this.partnerLink = partnerLink;
        this.partnerTimesstamp = partnerTimesstamp;
        this.partnerIntroduce = partnerIntroduce;
        this.partnerNote = partnerNote;
    }

    public Integer getPartnerSid() {
        return partnerSid;
    }

    public void setPartnerSid(Integer partnerSid) {
        this.partnerSid = partnerSid;
    }

    public Integer getPartnerValid() {
        return partnerValid;
    }

    public void setPartnerValid(Integer partnerValid) {
        this.partnerValid = partnerValid;
    }

    public String getPartnerPicture() {
        return partnerPicture;
    }

    public void setPartnerPicture(String partnerPicture) {
        this.partnerPicture = partnerPicture;
    }

    public String getPartnerLink() {
        return partnerLink;
    }

    public void setPartnerLink(String partnerLink) {
        this.partnerLink = partnerLink;
    }

    public Integer getPartnerTimesstamp() {
        return partnerTimesstamp;
    }

    public void setPartnerTimesstamp(Integer partnerTimesstamp) {
        this.partnerTimesstamp = partnerTimesstamp;
    }

    public String getPartnerIntroduce() {
        return partnerIntroduce;
    }

    public void setPartnerIntroduce(String partnerIntroduce) {
        this.partnerIntroduce = partnerIntroduce;
    }

    public String getPartnerNote() {
        return partnerNote;
    }

    public void setPartnerNote(String partnerNote) {
        this.partnerNote = partnerNote;
    }
}