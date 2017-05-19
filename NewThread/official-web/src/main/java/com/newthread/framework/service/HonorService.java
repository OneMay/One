package com.newthread.framework.service;

import com.newthread.entity.Honor;
import com.newthread.model.HonorModel;

/**
 * Author:pingcai
 * Date:16-10-14
 * Mail:11867939@qq.com
 */
public interface HonorService {
    /**
     * 获取分页
     * @param n 页数
     * @param size 大小
     * @return
     */
    HonorModel select(Integer n, Integer size);

    Integer add(Honor h);

    /**
     * 获取所有的记录数
     * @return 记录数
     */
    Integer getRecord();

    /**
     * @param t 类型，空或不匹配则默认获取所有类型列表
     * @param n 数量 默认 10条
     * @return
     */
    HonorModel getHonorByType(Integer t, Integer n,Integer s);

    Honor getHonorBySid(Integer id);

}
