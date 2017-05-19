import com.newthread.entity.Honor;
import com.newthread.entity.Teampartner;
import com.newthread.framework.service.HonorService;
import com.newthread.framework.service.PartnerService;
import com.newthread.model.HonorModel;
import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.Random;

/**
 * Author:pingcai
 * Date:16-9-12
 * Mail:11867939@qq.com
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:spring/spring-core.xml")
public class PartnerHonorTests {

    private final Logger logger = Logger.getLogger(this.getClass());

    @Autowired
    PartnerService service;

    @Test
    public void testSelect() {


    }

    @Test
    public void add(){

        Teampartner teampartner = null;

        for (int i = 1; i < 17; i++) {
            teampartner = new Teampartner();
            teampartner.setPartnerIntroduce("这是一个很牛逼的公司");
            teampartner.setPartnerLink("http://www.google.com.hk");
            teampartner.setPartnerValid(new Random().nextBoolean() ? 1 : 0);
            service.add(teampartner);
        }


    }



}
