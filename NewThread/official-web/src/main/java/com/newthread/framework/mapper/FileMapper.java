package com.newthread.framework.mapper;

import com.newthread.entity.File;
import java.util.List;

public interface FileMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table admin
     *
     * @mbggenerated
     */
    int insert(File record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table admin
     *
     * @mbggenerated
     */
    List<File> selectAll();

    int insertFile(File file);
}