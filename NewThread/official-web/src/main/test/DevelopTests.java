import com.newthread.framework.service.DevelopService;
import com.newthread.model.DevelopModel;
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
public class DevelopTests {

    private final Logger logger = Logger.getLogger(this.getClass());

    @Autowired
    DevelopService developService;

    @Test
    public void testgetNewestDevelopment() {

        DevelopModel ment = developService.getDevelopment();

        System.out.println(ment);
        System.out.println(ment.getDevelopmentNote());
        System.out.println(ment.getDevelopmentContent());
    }

    @Test
    public void test() {
        System.out.println(StringUtil.getMD5("1"));
    }







}
