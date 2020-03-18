package xyz.silentflower.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import xyz.silentflower.service.imp.EmpServiceImpl;

/**
 * @author SiletFlower
 * @date 2020/3/8 02:21:39
 * @description
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class test {
    @Autowired
    private EmpServiceImpl ee;

    @Test
    public void run1(){
        ee.getEmpByPage(1);
    }
}
