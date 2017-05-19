package com.newthread.framework.service;

import com.newthread.model.SearchInput;
import com.newthread.model.SearchModel;

/**
 * Created by pingcai on 2017/2/24.
 */
public interface GeneralService {
    SearchModel search(SearchInput searchInput);
}
