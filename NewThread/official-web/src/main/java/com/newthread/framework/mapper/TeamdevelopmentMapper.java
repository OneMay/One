package com.newthread.framework.mapper;

import com.newthread.entity.Teamdevelopment;

import java.util.List;

//对应的是encache里的那个名字

public interface TeamdevelopmentMapper {

    int deleteByPrimaryKey(Integer develovpmentSid);

    int insert(Teamdevelopment record);

    Teamdevelopment selectByPrimaryKey(Integer develovpmentSid);

    List<Teamdevelopment> selectAll();

    int updateByPrimaryKey(Teamdevelopment record);


    Teamdevelopment selectDevelopment();


    Teamdevelopment selectNewestDevelopment();
}