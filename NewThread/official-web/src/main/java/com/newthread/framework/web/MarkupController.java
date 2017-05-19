package com.newthread.framework.web;

import com.newthread.entity.Job;
import com.newthread.entity.Teammarkup;
import com.newthread.framework.service.MarkupService;
import com.newthread.framework.service.RoleService;
import com.newthread.framework.service.UserService;
import com.newthread.framework.util.MessageMaker;
import com.newthread.framework.util.StringUtil;
import com.newthread.model.MarkupModel;
import com.newthread.model.Message;
import org.apache.log4j.Logger;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * Author:huangpingcaigege
 * Date:2016/10/8
 * Mail:11867939@qq.com
 */
@RestController
public class MarkupController {

    private final Logger logger = Logger.getLogger(this.getClass());

    @Resource
    private MarkupService service;

    @Resource
    private UserService userService;

    @Resource
    private RoleService roleService;

    @RequestMapping(value = "/markup/g.do", method = RequestMethod.GET)
    public Object getNewestAllMarkup() {

        List<MarkupModel> list = service.getNewestAllMarkup();

        if (null == list || list.size() == 0) {
            Message message = new Message();
            message.setMessage("组成架构列表为空!");
            return message;
        }
        return list;
    }

    /**
     * 通过职位得到中高层的具体信息
     *
     * @return
     */
    @RequestMapping(value = "/markup/gb.do", method = RequestMethod.GET)
    public Object getMarkupByJob(@RequestParam(required = false) String code) {

        Message message = null;

        if (StringUtil.isEmpty(code)) {
            message = new Message();
            message.setMessage("参数为空!");
            return message;
        }

        MarkupModel model = service.getMarkupByJob(code);

        if (model == null) {
            message = new Message();
            message.setMessage("暂无记录!");
            return message;
        }

        return model;

    }

    /**
     * 添加高层
     *
     * @param markupModel
     * @return
     */
    @RequestMapping(value = "/markup", method = RequestMethod.POST)
    public Object add(@RequestBody MarkupModel markupModel) {

        Subject subject = SecurityUtils.getSubject();

        Message message = new Message();

        if (subject.hasRole(roleService.selectAdmin())) {
            Teammarkup teammarkup = service.add(markupModel);
            if (teammarkup == null) {
                message.setMessage("添加失败！");
            } else {
                message.setMessage("添加成功！");
            }
        } else {
            message.setMessage("权限不足！");
        }
        return message;

    }

    /**
     * 获取 高层职位信息
     *
     * @return
     */
    @RequestMapping(value = "/markup/job.do", method = RequestMethod.GET)
    public Object getMarkupByJob() {

        List<Job> list = service.getAllJob();

        if (list != null && list.size() > 0) {
            return list;
        }

        return MessageMaker.make(null, "列表为空！", null);

    }

}
