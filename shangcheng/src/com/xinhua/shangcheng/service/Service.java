package com.xinhua.shangcheng.service;

import com.xinhua.shangcheng.pojo.Book;
import com.xinhua.shangcheng.pojo.BookList;
import com.xinhua.shangcheng.pojo.Category;
import com.xinhua.shangcheng.pojo.User;

import java.util.List;

/**
 * Created by Administrator on 2019/10/30.
 */
public interface Service {
   User findByEmali(String email)throws Exception;
   void saveByUser(User user)throws Exception;
   void fromMail(User user)throws Exception;
   void updateCode(User user)throws Exception;
   void updateTime(User user)throws Exception;
   String login(String email,String pwd)throws Exception;
   Category fenLei(List<Category> list)throws Exception;
   List<List> fenLeiBy3(List<Book> list)throws Exception;
   List<BookList> liuLan(Category category)throws  Exception;
   List<Book> Count(int id)throws Exception;
}
