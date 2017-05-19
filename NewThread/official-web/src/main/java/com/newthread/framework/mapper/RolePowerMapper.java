package com.newthread.framework.mapper;

import com.newthread.entity.RolePower;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface RolePowerMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table Role_power
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(@Param("roleNumber") String roleNumber, @Param("powerNumber") String powerNumber);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table Role_power
     *
     * @mbggenerated
     */
    int insert(RolePower record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table Role_power
     *
     * @mbggenerated
     */
    List<RolePower> selectAll();
}