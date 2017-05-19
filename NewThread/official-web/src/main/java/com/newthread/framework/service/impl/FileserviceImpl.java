package com.newthread.framework.service.impl;

import com.newthread.entity.File;
import com.newthread.entity.Images;
import com.newthread.framework.mapper.FileMapper;
import com.newthread.framework.mapper.ImagesMapper;
import com.newthread.framework.service.FileService;
import com.newthread.framework.util.DateUtils;
import com.newthread.model.FileModel;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;

/**
 * Created by Alan on 2016/11/14.
 */
@Service
public class FileserviceImpl implements FileService {

    private final org.apache.log4j.Logger logger = org.apache.log4j.Logger.getLogger(this.getClass());

    @Resource
    FileMapper mapper;

    @Resource
    ImagesMapper imagesMapper;

    @Override
    public Integer insert(FileModel file) {
        String fileOriginName = file.getFileOriginName();
        File f = new File();
        f.setFileOriginName(fileOriginName);
        f.setUserAccount(file.getUserAccount());
        f.setFilePath(file.getFilePath());
        f.setFileNote(file.getFileNote());
        f.setFileComment(file.getFileComment());
        f.setFileUploadTime(new java.sql.Timestamp(new Date().getTime()));
        f.setFileTimestamp(DateUtils.getTimeStamp());
        f.setFileName(file.getFileName());
        f.setFileType(file.getFileType());
        int i = mapper.insert(f);
        return i;
    }

    @Override
    public Integer insertImg(Images model) {
        return imagesMapper.insert(model);
    }
}
