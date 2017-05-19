import com.newthread.framework.service.AboutService;
import com.newthread.model.AboutModel;
import com.newthread.framework.util.StringUtil;
import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * Author:pingcai
 * Date:16-9-12
 * Mail:11867939@qq.com
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:spring/spring-core.xml")
public class AboutTests {

    private final Logger logger = Logger.getLogger(this.getClass());

    @Autowired
    AboutService aboutService;

    @Test
    public void testgetNewestDevelopment() {

        AboutModel ment =aboutService.getAboutInfo();

        System.out.println(ment);
        System.out.println(ment.getAboutMaster());
        System.out.println(ment.getAboutNote());
    }

    @Test
    public void test() {
        System.out.println(Integer.parseInt(null));
    }



}
