package com.spring.shiwu.sevrice.impl;

import com.spring.shiwu.Dao.AccountDao;
import com.spring.shiwu.sevrice.Sevrice;

/**
 * Created by Administrator on 2019/11/13.
 */
public class SevriceImpl implements Sevrice {

    private AccountDao dao;

    public void setDao(AccountDao dao) {
        this.dao = dao;
    }

    @Override
    public void zhuang() {
        System.out.println("开始转账");
        dao.inMoney(1,"tom",1000);
        int a=10/0;
        dao.outMoney(2,"jerry",1000);
        System.out.println("转账结束");
    }
}
