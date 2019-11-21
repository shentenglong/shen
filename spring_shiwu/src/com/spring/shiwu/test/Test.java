package com.spring.shiwu.test;

import com.spring.shiwu.Dao.AccountDao;
import com.spring.shiwu.sevrice.Sevrice;
import com.spring.shiwu.sevrice.impl.SevriceImpl;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * Created by Administrator on 2019/11/13.
 */
public class Test {
    private AccountDao dao;

    public void setDao(AccountDao dao) {
        this.dao = dao;
    }

    public static void main(String[] args) {
        ApplicationContext ac=new ClassPathXmlApplicationContext("spring-mvc.xml");
//        System.out.println(ac);
        Sevrice sevrice=ac.getBean("sevrice", SevriceImpl.class);
        sevrice.zhuang();
    }


}
