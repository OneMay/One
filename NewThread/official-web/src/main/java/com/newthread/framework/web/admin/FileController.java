package com.newthread.framework.web.admin;

import com.newthread.entity.Images;
import com.newthread.framework.service.FileService;
import com.newthread.framework.service.PowerService;
import com.newthread.framework.util.ConfigReader;
import com.newthread.framework.util.FileTypeUtil;
import com.newthread.framework.util.MessageMaker;
import org.apache.log4j.Logger;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Calendar;
import java.util.UUID;


/**
 * Author:pingcai
 * Date:16-11-9
 * Mail:11867939@qq.com
 * <p>
 * 操作文件上传下载等
 */
@RestController
@RequestMapping("/admin/file")
public class FileController {

    @Resource
    private FileService fileService;

    @Resource
    private PowerService powerService;

    private final Logger logger = Logger.getLogger(this.getClass());

    /**
     * 1.检查表单信息
     * 2.检查用户权限
     * 3.修改部分数据，如打乱文件名，设置存放路径，设置文件类型
     * 4.写入数据库
     * 5.返回上传文件后表现的URL
     * <p>
     * 图片类型有新闻的图片，还有相册的图片
     * <p>
     * 新闻图片为1 相册图片为2
     * <p>
     * multipart/form-data
     *
     * @param file
     * @param fileComment
     * @param fileNote
     * @return
     * @throws IOException
     */
    @RequestMapping(value = "img.do", method = RequestMethod.POST)
    @ResponseBody
    public Object uploadImg(@RequestParam(value = "file") MultipartFile file,
                            @RequestParam(value = "fileComment", required = false) String fileComment,
                            @RequestParam(value = "fileNote", required = false) String fileNote,
                            @RequestParam(value = "imgType", required = true) Integer imgType) throws IOException {

        Subject subject = SecurityUtils.getSubject();

        // 检查用户权限
        if (!subject.isPermitted("upload")) {
            return MessageMaker.make(null, "无此权限！", null);
        }

        //文件会上传到配置好的目录
        String realPath = ConfigReader.getFileStorePath();
        if (imgType != null) {
            if (imgType == Images.NEWS_TYPE) {
                realPath += File.separator + "news";
            } else if (imgType == Images.PHOTOS_TYPE) {
                realPath += File.separator + "photos";
            } else {
                return MessageMaker.make(null, "类型有误！！", null);
            }
        } else {
            return MessageMaker.make(null, "必须声明图片类型！", null);
        }

        int point = file.getOriginalFilename().lastIndexOf(".");
        String type = file.getOriginalFilename().substring(point + 1);
        String originalFilename = file.getOriginalFilename().substring(0, point) + "." + type;
        String fileName = UUID.randomUUID().toString() + "." + type;

        Path path = Paths.get(realPath);


        if (Files.notExists(path)) {
            Files.createDirectories(path);
        }

        File f = new File(realPath + "/" + fileName);

        file.transferTo(f);

        Images model = new Images();
        // 文件拥有者
        model.setUserAccount(subject.getPrincipal().toString());
        model.setImgUploadTime(Calendar.getInstance().getTime());
        model.setImgComment(fileComment);
        model.setImgNote(fileNote);
        model.setImgType(imgType);
        model.setImgPath(realPath + "/" + fileName);
        model.setImgOriginName(originalFilename);
        model.setImgName(fileName);
        model.setImgType(FileTypeUtil.getType(type));
        model.setImgTimestamp(System.currentTimeMillis());
        /*
        //设置文件下载服务器
        String fileUrl = ServletUtil.getServerURL(request) + ConfigReader.getValue("file_system") + "/" + model.getFileName();
        model.setFileUrl(fileUrl);
        */

        try {
            if (fileService.insertImg(model) <= 0) {
                f.delete();
                return MessageMaker.make(null, "上传失败，请重试！", null);
            }
        } catch (Exception e) {
            e.printStackTrace();
            f.delete();
        }

        return MessageMaker.make(null, "上传成功！", model.getImgName());
    }


}
