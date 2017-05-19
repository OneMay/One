import com.newthread.entity.User;
import com.newthread.framework.util.ConfigReader;
import com.newthread.framework.util.DateUtils;
import com.newthread.framework.util.StringUtil;
import org.junit.Test;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.Calendar;
import java.util.Date;

/**
 * Author:pingcai
 * Date:16-10-14
 * Mail:11867939@qq.com
 */
public class Tests {

    Integer integer;

    @Test
    public void test() {

        System.out.println(ConfigReader.getFileStorePath());
        //2147483647
        //9223372036854775807
    }

    @Test
    public void testxx() {
        String sql = "select * from user where 1==1 and 'drop table user'";
        System.out.println(StringUtil.defendSQLInject(null));
}


    @Test
    public void testDate() {

        Date date = new Date();

        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);

        System.out.println(DateUtils.time2String(null));

    }
}
