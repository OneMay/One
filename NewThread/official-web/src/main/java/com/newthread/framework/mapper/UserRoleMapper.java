package com.newthread.framework.mapper;

import com.newthread.entity.UserRole;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserRoleMapper {

    int deleteByPrimaryKey(@Param("userAccount") String userAccount, @Param("roleNumber") String roleNumber);

    int insert(UserRole record);

    List<UserRole> selectAll();

    int deleteByUserAccount(String account);
}