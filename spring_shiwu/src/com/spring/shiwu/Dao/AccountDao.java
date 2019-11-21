package com.spring.shiwu.Dao;

/**
 * Created by Administrator on 2019/11/13.
 */
public interface AccountDao {

    //转出
    void outMoney(int id,String username,double money);
    //转入
    void inMoney(int id,String username,double money);
}
