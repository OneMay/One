package com.newthread.framework.mapper;

import com.newthread.entity.Teammarkup;

import java.util.List;

public interface TeammarkupMapper {

    int deleteByPrimaryKey(Integer markupSid);

    int insert(Teammarkup record);

    Teammarkup selectByPrimaryKey(Integer markupSid);

    List<Teammarkup> selectAll();

    //得到最新一届的中高层
    List<Teammarkup> selectNewestAll();

    int updateByPrimaryKey(Teammarkup record);

    Teammarkup selectNewestMarkupByJob(String code);
}