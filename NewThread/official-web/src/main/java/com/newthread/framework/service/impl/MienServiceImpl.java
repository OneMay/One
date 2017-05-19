package com.newthread.framework.service.impl;

import com.newthread.entity.Images;
import com.newthread.entity.Teammien;
import com.newthread.entity.Videos;
import com.newthread.framework.mapper.ImagesMapper;
import com.newthread.framework.mapper.TeammienMapper;
import com.newthread.framework.mapper.VideosMapper;
import com.newthread.framework.service.MienService;
import com.newthread.model.MienImageModel;
import com.newthread.model.MienModel;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by pingcai on 17-5-6.
 */
@Service
public class MienServiceImpl implements MienService {

    @Resource
    private TeammienMapper mapper;

    @Resource
    private ImagesMapper imagesMapper;

    @Resource
    private VideosMapper videosMapper;

    @Override
    public List<MienImageModel> listPhotos(String sid) {
        //通过团队风采 照片的预览获取所有的图片

        List<MienImageModel> list = imagesMapper.selectByPhotoSid(sid);

        for (MienImageModel img : list) {
            if (null != img.getImgPath()) {
                img.setImgPath(Images.PHOTO_PREFIX + img.getImgPath());
            }
        }
        return list;
    }

    @Override
    public List<MienModel> lp() {

        List<MienModel> list = mapper.selectByTypeModel(Teammien.PHOTOS);

        for (MienModel m : list) {
            m.setThumb(Images.NEWS_PREFIX + m.getThumb()); //这是照片栏,加上一张缩略图
        }
        return list;
    }

    @Override
    public List<Videos> lv() {
        return videosMapper.selectAll();
    }
}
