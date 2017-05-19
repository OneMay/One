package com.newthread.framework.service;

import com.newthread.model.AboutModel;

/**
 * Author:黄平财
 * Date:2016/12/7
 * Mail:11867939@qq.com
 */
public interface RoleService {
    String selectAdmin();

    boolean checkRoleExistByRoleNumber(String roles);

    boolean checkRoleExistByRoleNumber(String[] roles);

}
