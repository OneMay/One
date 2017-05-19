import com.newthread.framework.service.UserService;
import com.newthread.model.user.UserRegisterModel;
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
public class UserTests {

    private final Logger logger = Logger.getLogger(this.getClass());

    @Autowired
    UserService userService;

    @Test
    public void testRegister() {

        UserRegisterModel model = new UserRegisterModel();
        model.setPassword("123");
        model.setName("dd");
        model.setAccount("42113055@qq.com");

        logger.info(userService.register(model));


    }

    @Test
    public void test() {
        System.out.println(StringUtil.getMD5("1"));
    }



    @Test
    public void testp() {
        for (String str : userService.getAllPermission("admin")){
            System.out.println(str);
        }
    }




}
