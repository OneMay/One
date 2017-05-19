import com.newthread.entity.Teamnews;
import com.newthread.framework.service.NewsService;
import com.newthread.model.NewsModel;
import com.newthread.model.NewsModelWithImages;
import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

/**
 * Author:pingcai
 * Date:16-9-12
 * Mail:11867939@qq.com
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:spring/spring-core.xml")
public class NewsTests {

    private final Logger logger = Logger.getLogger(this.getClass());

    @Autowired
    NewsService service;

    @Test
    public void testRegister() {

        Teamnews news = null;

        for (int i = 0; i < 10; i++) {
            news = new Teamnews();
            news.setNewsTitle("总想搞个大新闻标题 --->  " + i);
            news.setNewsContend("总想搞个大新闻内容 --->  " + i);
            logger.info(service.add(news));
        }
    }

    @Test
    public void testImg(){
        NewsModelWithImages news = service.selectByPrimaryKeyWithImages(988);

        System.out.println(news.getNewsSid());
        System.out.println(news.getNewsContend());
        System.out.println(news);

    }

    @Test
    public void test() {

        List<Teamnews> news = service.getNewByPictureList(5);

        System.out.println(news.size());
        for (Teamnews n : news) {
            System.out.println(n.getNewsSid() + "\t\t" + n.getNewsPicture());
        }
    }

    @Test
    public void testSelect() {

        NewsModel news = service.select(1, 10, 1);

        System.out.println("长度       ： " + news.getList().size());
        for (NewsModel.News n : news.getList()) {
            System.out.println(n.getNewsSid() + "\t\t" + n.getNewsPicture());
        }
    }


}
