import com.newthread.entity.Honor;
import com.newthread.framework.service.HonorService;
import com.newthread.model.HonorModel;
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
public class HonorTests {

    private final Logger logger = Logger.getLogger(this.getClass());

    @Autowired
    HonorService service;

    @Test
    public void testSelect() {

        HonorModel model = service.select(12,6);

        System.out.println("总记录："+model.getTotalRecode());

        System.out.println(model.get(0).getHonorIntroduce());
        System.out.println(model.get(model.size()-1).getHonorIntroduce());
        System.out.println(model.get(model.size()-5).getHornorTitle());
        System.out.println(model);

    }

    @Test
    public void testSelectByType() {

        HonorModel model = service.getHonorByType(1,1,10);

        System.out.println("总记录："+model.size());
        for (int i=0 ; i <model.size();i++) {
            System.out.println(model.get(i).getHornorTitle() + "\t\t\t" + model.get(i).getHonerType());
        }

    }

    @Test
    public void testSelectBySid() {

        Honor model = service.getHonorBySid(484);

        System.out.println(model.getHonorTime());
        System.out.println(model.getHonorTimesstamp());
        System.out.println(model.getHonorTitle());

    }
    @Test
    public void add(){

        Honor h = null;

        for (int i = 1; i < 6; i++) {
            h = new Honor();
            h.setHonorTitle("标题" + i);
            h.setHonorIntroduce("今天获了个奖！！！" + i);
            h.setHonorType("3");
            service.add(h);
        }

    }

}
