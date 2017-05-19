package com.newthread.model.user;

/**
 * Created by huangpingcaigege on 2016/6/5.
 * 用户登录实体
 */
public class LoginModel {

    private String a; //账号
    private String p;
    private String v;//验证码
    private Boolean r = false; //是否记住我

    public String getA() {
        return a;
    }

    public void setA(String a) {
        this.a = a;
    }

    public String getP() {
        return p;
    }

    public void setP(String p) {
        this.p = p;
    }

    public String getV() {
        return v;
    }

    public void setV(String v) {
        this.v = v;
    }

    public Boolean getR() {
        return r;
    }

    public void setR(Boolean r) {
        this.r = r;
    }

    @Override
    public String toString() {
        return "{" +
                "a='" + a + '\'' +
                ", p='" + p + '\'' +
                ", v='" + v + '\'' +
                ", r=" + r +
                '}';
    }
}
