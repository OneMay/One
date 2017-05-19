import com.newthread.framework.service.MarkupService;
import com.newthread.model.MarkupModel;
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
public class MarkupTests {

    private final Logger logger = Logger.getLogger(this.getClass());

    @Autowired
    MarkupService service;

    @Test
    public void testgetNewestDevelopment() {

        List<MarkupModel> list = service.getNewestAllMarkup();

        logger.info(list.size());
        logger.info(list.get(0).getMarkupAcademy());
    }

    @Test
    public void test() {

        MarkupModel m = service.getMarkupByJob("1");


        System.out.println(m.getMarkupContent());
    }







}
