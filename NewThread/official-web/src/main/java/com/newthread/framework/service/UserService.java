package com.newthread.framework.service;

import com.newthread.entity.User;
import com.newthread.framework.exception.RoleNotFoundException;
import com.newthread.framework.exception.UserNotFoundException;
import com.newthread.model.user.UserRegisterModel;

import java.util.List;

/**
 * Author:pingcai
 * Date:16-9-30
 * Mail:11867939@qq.com
 */
public interface UserService {

    User getOneAdmin();

    User selectByPrimaryKey(String account);

    User register(UserRegisterModel model);

    List<String> getAllPermission(Object principal);

    void clearCache(String account);

    boolean checkPassword(String account, String passwd);

    boolean exist(String account);

    Integer delete(String account);

    int changePasswd(String account, String newpw);

    User update(UserRegisterModel model) throws UserNotFoundException, RoleNotFoundException;
}
