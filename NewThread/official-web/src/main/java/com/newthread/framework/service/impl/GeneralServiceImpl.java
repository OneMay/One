package com.newthread.framework.service.impl;

import com.newthread.framework.service.GeneralService;
import com.newthread.framework.util.StringUtil;
import com.newthread.model.SearchInput;
import com.newthread.model.SearchModel;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by pingcai on 2017/2/24.
 */
@Service
@CacheConfig(cacheNames = "one_day")
public class GeneralServiceImpl implements GeneralService {

    /**
     *
     * 通过关键字去查找帖子：
     *
     * 1.通过值去找数据库标题（新闻动态、团队荣誉）
     * 2.找到数据库对应的记录
     * 3.拼接成URL        set -> bean
     *
     *
     * @param searchInput
     * @return
     */
    @Override
    @Cacheable(key = "'search_' + #searchInput.value + '_' + #searchInput.type + '_' + #searchInput.time", unless = "#result == null")
    public SearchModel search(SearchInput searchInput) {

        if (StringUtil.isEmpty(searchInput.getValue())) {
            return null;
        }


        return null;
    }
}
