package com.newthread.framework.mapper;

import com.newthread.entity.Teampartner;
import java.util.List;

public interface TeampartnerMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table TeamPartner
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(Integer partnerSid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table TeamPartner
     *
     * @mbggenerated
     */
    int insert(Teampartner record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table TeamPartner
     *
     * @mbggenerated
     */
    Teampartner selectByPrimaryKey(Integer partnerSid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table TeamPartner
     *
     * @mbggenerated
     */
    List<Teampartner> selectAll();

    int updateByPrimaryKey(Teampartner record);


    List<Teampartner> select(Integer n,Integer i);

    //不管有效无效都选出来
    List<Teampartner> selectIgnore(Integer n, Integer i);
}