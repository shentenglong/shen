package com.spring.shiwu.Dao.impl;

import com.spring.shiwu.Dao.AccountDao;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 * Created by Administrator on 2019/11/13.
 */
public class AccountDaoImple implements AccountDao {
    private JdbcTemplate template;

    public AccountDaoImple(JdbcTemplate template){
        this.template=template;
    }
    @Override
    public void outMoney(int id, String username, double money) {
        String sql = "update account set salary=salary-? where id=? and username=?";
        template.update(sql, money,id,username);
    }

    @Override
    public void inMoney(int id, String username, double money) {
        String sql = "update account set salary=salary+? where id=? and username=?";
        template.update(sql, money,id,username);
    }
}
