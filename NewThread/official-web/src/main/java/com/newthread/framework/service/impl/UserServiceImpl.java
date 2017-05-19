package com.newthread.framework.service.impl;

import com.newthread.entity.User;
import com.newthread.entity.UserRole;
import com.newthread.framework.exception.RoleNotFoundException;
import com.newthread.framework.exception.UserNotFoundException;
import com.newthread.framework.mapper.RoleMapper;
import com.newthread.framework.mapper.UserMapper;
import com.newthread.framework.mapper.UserRoleMapper;
import com.newthread.framework.service.UserService;
import com.newthread.model.user.UserRegisterModel;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * Author:pingcai
 * Date:16-9-30
 * Mail:11867939@qq.com
 */
@Service
public class UserServiceImpl implements UserService {

    @Resource
    UserMapper userMapper;

    @Resource
    private UserRoleMapper userRoleMapper;

    @Resource
    RoleMapper roleMapper;

    @Override
    public User getOneAdmin() {
        return userMapper.getOneAdmin();
    }

    public User selectByPrimaryKey(String account) {
        return userMapper.selectByPrimaryKey(account);
    }

    @Transactional
    public User register(UserRegisterModel model) {

        User user = new User();
        user.setUserName(model.getName());
        user.setPassword(model.getPassword());
        user.setUserAccount(model.getAccount());

        int flag = userMapper.add(user);

        for (String str : model.getRoles()) {
            userRoleMapper.insert(new UserRole(user.getUserAccount(), str));
        }

        return flag == 0 ? null : user;
    }

    public List<String> getAllPermission(Object principal) {
        return userMapper.getAllPermission(principal);
    }

    public void clearCache(String account) {
    }

    /**
     * 大于 0 就正确
     *
     * @param account
     * @param passwd
     * @return
     */
    public boolean checkPassword(String account, String passwd) {

        Integer res = userMapper.checkPassword(account, passwd);

        return res != null && res > 0;
    }

    public boolean exist(String account) {

        Integer flag = userMapper.exist(account);
        return (flag == null || flag <= 0) ? false : true;
    }

    @Transactional
    public Integer delete(String account) {

        Integer f = userMapper.deleteUserRole(account);

        return f > 0 ? userMapper.deleteByPrimaryKey(account) : 0;

    }

    @Override
    public int changePasswd(String account, String newpw) {
        return userMapper.updatePassword(account, newpw);
    }

    @Transactional
    public User update(UserRegisterModel model) throws UserNotFoundException, RoleNotFoundException {

        User user = userMapper.selectByPrimaryKey(model.getAccount());

        if (user == null) {
            throw new UserNotFoundException();
        }
        for (String r : model.getRoles()) {
            Integer i = roleMapper.existByRoleNumber(r);
            if (i == null || i <= 0) {
                throw new RoleNotFoundException();
            }
        }
        if (null != model.getPassword()) {
            user.setPassword(model.getPassword());
        }
        if (null != model.getName()) {
            user.setUserName(model.getName());
        }
        if (null != model.getAccount()) {
            user.setUserAccount(model.getAccount());
        }
        if (null != model.getRoles() && model.getRoles().length > 0) {
            userRoleMapper.deleteByUserAccount(user.getUserAccount());
            for (String role : model.getRoles()) {
                userRoleMapper.insert(new UserRole(user.getUserAccount(), role));
            }
        }
        //更新失败
        if (userMapper.updateInfo(user) < 0) {
            user = null;
        }
        return user;
    }

}
