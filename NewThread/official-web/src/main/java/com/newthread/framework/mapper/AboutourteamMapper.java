package com.newthread.framework.mapper;

import com.newthread.entity.Aboutourteam;

import java.util.List;

public interface AboutourteamMapper {

    int deleteByPrimaryKey(Integer aboutSid);

    int insert(Aboutourteam record);

    Aboutourteam selectByPrimaryKey(Integer aboutSid);

    List<Aboutourteam> selectAll();

    int updateByPrimaryKey(Aboutourteam record);

    Aboutourteam selectNewestAbout();
}