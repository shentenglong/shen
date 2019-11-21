package com.xinhua.shangcheng.dao;

import com.xinhua.shangcheng.pojo.*;

import java.util.List;

/**
 * Created by Administrator on 2019/10/30.
 */
public interface ShangChengDao {
    User findByEmali(String email)throws Exception;
    void saveByUser(User user)throws Exception;
    void updateCode(User user)throws Exception;
    void updateTime(User user)throws Exception;
    List<Category> findAll()throws Exception;
    List<Book>findAllBoos()throws Exception;
    List<Book> Count(int id)throws Exception;
    List<Book>findById(int id)throws Exception;
    String findName(int id)throws Exception;
    Book findBookById(int id)throws Exception;
    Address findAddressById(int id)throws Exception;
    Address findAddressByAddress(String address)throws Exception;
    void UpdateAddress(int id,Address address)throws Exception;
    void addOrder(Order order)throws Exception;
}
