package com.newthread.framework.web;

import com.newthread.framework.service.MienService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

/**
 * Created by pingcai on 17-5-6.
 */
@RestController
@RequestMapping("/mien")
public class MienController {

    @Resource
    private MienService mienService;

    /**
     * 获取团队风采列表
     *
     * @return
     */
    @RequestMapping(value = "lp.do", method = RequestMethod.GET)
    public Object lp() {
        return mienService.lp();
    }

    /**
     * 获取团队风采中的团队照片，以list返回即可
     * <p>
     * 结果应带有一张缩略图
     * <p>
     * 分页，，，，后面再做
     *
     * @return
     */
    @RequestMapping(value = "photos.do", method = RequestMethod.GET)
    public Object listPhotos(String sid) {
        return mienService.listPhotos(sid);
    }

    @RequestMapping(value = "videos.do", method = RequestMethod.GET)
    public Object listVideos() {
        return mienService.lv();
    }

}
