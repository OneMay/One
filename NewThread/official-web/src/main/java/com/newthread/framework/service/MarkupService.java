package com.newthread.framework.service;

import com.newthread.entity.Job;
import com.newthread.entity.Teammarkup;
import com.newthread.model.MarkupModel;

import java.util.List;

/**
 * Author:黄平财
 * Date:2016/10/8
 * Mail:11867939@qq.com
 */
public interface MarkupService {

    List<MarkupModel> getNewestAllMarkup();


    MarkupModel getMarkupByJob(String code);

    Teammarkup add(MarkupModel markupModel);

    List<Job> getAllJob();
}
