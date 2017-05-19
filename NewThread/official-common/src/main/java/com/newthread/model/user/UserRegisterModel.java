package com.newthread.model.user;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

import java.util.Arrays;

/**
 * Author:pingcai
 * Date:16-9-12
 * Mail:11867939@qq.com
 * 绑定用户参数
 */
public class UserRegisterModel {

    @Length(max = 10, min = 2,message = "用户名长度在2~10之间")
    private String name;

    @Length(max = 20, min = 5,message = "密码长度在5~20之间")
    private String password;

    @Length(max = 11, min = 5,message = "账号长度在5~10之间")
    private String account;

    private String[] roles;

    public String[] getRoles() {
        return roles;
    }

    public void setRoles(String[] roles) {
        this.roles = roles;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    @Override
    public String toString() {
        return "UserRegisterModel{" +
                "name='" + name + '\'' +
                ", password='" + password + '\'' +
                ", account='" + account + '\'' +
                ", roles=" + Arrays.toString(roles) +
                '}';
    }
}
