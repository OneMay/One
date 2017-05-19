package com.newthread.framework.mapper;

import com.newthread.entity.Job;
import java.util.List;

public interface JobMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table Job
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(Integer jobSid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table Job
     *
     * @mbggenerated
     */
    int insert(Job record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table Job
     *
     * @mbggenerated
     */
    Job selectByPrimaryKey(Integer jobSid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table Job
     *
     * @mbggenerated
     */
    List<Job> selectAll();

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table Job
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(Job record);
}