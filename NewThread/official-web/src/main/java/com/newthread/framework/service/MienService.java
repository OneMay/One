package com.newthread.framework.service;

import com.newthread.entity.Videos;
import com.newthread.model.MienImageModel;
import com.newthread.model.MienModel;

import java.util.List;

/**
 * Created by pingcai on 17-5-6.
 */
public interface MienService {

    List<MienImageModel> listPhotos(String sid);

    List<MienModel> lp();

    List<Videos> lv();
}
