package com.newthread.framework.service;

import com.newthread.entity.Teamnews;
import com.newthread.model.NewsModel;
import com.newthread.model.NewsModelWithImages;

import java.util.List;

/**
 * Created by liuzhe on 2016/10/14.
 */
public interface NewsService {

    int add(Teamnews news);

    Teamnews selectByPrimaryKey(Integer id);

    Teamnews getNewByPicture();

    List<Teamnews> getNewByPictureList(int size);

    Integer deleteNewBySid(Integer id);

    Integer updateNew(Teamnews teamnews);

    Integer addNew(Teamnews teamnews);

    Teamnews getOneNewestNews();

    NewsModel select(Integer n, Integer s, Integer type);

    NewsModelWithImages selectByPrimaryKeyWithImages(Integer id);
}
