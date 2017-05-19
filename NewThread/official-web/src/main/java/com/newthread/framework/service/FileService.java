package com.newthread.framework.service;

import com.newthread.entity.File;
import com.newthread.entity.Images;
import com.newthread.model.FileModel;
import org.springframework.stereotype.Service;

/**
 * Created by Alan on 2016/11/14.
 */
@Service
public interface FileService {

    Integer insert(FileModel file);

    Integer insertImg(Images model);
}
