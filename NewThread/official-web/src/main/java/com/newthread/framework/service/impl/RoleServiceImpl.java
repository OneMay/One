package com.newthread.framework.service.impl;

import com.newthread.framework.mapper.RoleMapper;
import com.newthread.framework.service.RoleService;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Author:黄平财
 * Date:2016/12/7
 * Mail:11867939@qq.com
 */
@Service
@CacheConfig(cacheNames = "one_month")
public class RoleServiceImpl implements RoleService {

    @Resource
    private RoleMapper roleMapper;

    public String selectAdmin() {
        return roleMapper.selectAdmin();
    }

    @Override
    public boolean checkRoleExistByRoleNumber(String role) {

        Integer r = roleMapper.existByRoleNumber(role);

        return r == null || r <= 0 ? false : true;
    }

    @Override
    public boolean checkRoleExistByRoleNumber(String[] roles) {
        Integer r = 0;
        for (String string : roles){
            r = roleMapper.existByRoleNumber(string);
            if(r == null || r <= 0 ){
                return false;
            }
        }

        return true;
    }
}
