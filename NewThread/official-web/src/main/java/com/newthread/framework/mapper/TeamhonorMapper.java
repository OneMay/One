package com.newthread.framework.mapper;

import com.newthread.entity.Honor;
import com.newthread.model.HonorModel;

import java.util.List;

public interface TeamhonorMapper {

    int deleteByPrimaryKey(Integer honorSid);

    int insert(Honor record);

    Honor selectByPrimaryKey(Integer honorSid);

    List<Honor> selectAll();

    int updateByPrimaryKey(Honor record);

    List<Honor> select(Integer n, Integer s);

    int getRecode();

    List<Honor> selectAllByType(Integer integer, Integer t, Integer n);

    List<Honor> selectAllByNumber(Integer n);

    Honor selectBySid(Integer id);

    Integer getRecordByType(Integer t);
}