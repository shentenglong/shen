package com.xinhua.shangcheng.test;

import com.xinhua.shangcheng.dao.ShangChengDao;
import com.xinhua.shangcheng.dao.impl.ShangChengDaoImpl;
import com.xinhua.shangcheng.pojo.Book;
import com.xinhua.shangcheng.pojo.BookList;
import com.xinhua.shangcheng.pojo.Category;
import com.xinhua.shangcheng.service.Service;
import com.xinhua.shangcheng.service.impl.ServiceImpl;

import java.util.*;

/**
 * Created by Administrator on 2019/10/30.
 */
public class Test {
    public static void main(String[] args) throws Exception {
        String match = "[\\u4e00-\\u9fa5\\a-z0-9]{4,20}";
        System.out.println("中1234".matches(match));
        UUID uuid = UUID.randomUUID();
        String uuid1 = uuid.toString();
        // System.out.println(uuid1);
        // System.out.println(uuid);
        //Date date=new Date();
        //System.out.println(date.getTime());
//        Random random=new Random();
//        int a=random.nextInt(50);
//        System.out.println(a);
        ShangChengDao dao = new ShangChengDaoImpl();
        List<Book> list = dao.findById(10);

//        List<List>lists=new ArrayList<List>();
//        for(int i=1;i<list.size();i++){
//            if(i%3==0){
//                List<Book>list0=new ArrayList<Book>();
//                list0.add(list.get(i-3));
//                list0.add(list.get(i-2));
//                list0.add(list.get(i-1));
//                lists.add(list0);
//                if((i+1)==list.size()){
//                    List<Book>list1=new ArrayList<Book>();
//                    list1.add(list.get(i));
//                    lists.add(list1);
//                }
//                if((i+2)==list.size()){
//                    List<Book>list1=new ArrayList<Book>();
//                    list1.add(list.get(i));
//                    list1.add(list.get(i+1));
//                    lists.add(list1);
//                }
//            }
//        }
        //System.out.println(lists.get(4));
        //System.out.println(list);
//        List<Book> list1=dao.Count(2);
//        System.out.println(list1.size());
        Service service = new ServiceImpl();
//        List<List> lists=service.fenLeiBy3(list1);
//        System.out.println(lists.get(7));
        Category category = service.fenLei(dao.findAll());
        //List list1 = service.liuLan(category);
        //System.out.println(list1);
//        System.out.println(category.getSubCats().get(0).getSubCats().size());
//        System.out.println(category.getSubCats().get(0).getSubCats());
//        List<Category>list1=category.getSubCats().get(0).getSubCats();
//        for(int i=0;i<list1.size();i++){
//            int a=list1.get(i).getId();
//            System.out.println(list1.get(i).getName());
//            List<Book>list2=dao.findById(a);
//            System.out.println(list2.size());
//        }
        //System.out.println(dao.findName(2));
//        List<Book> list3 = dao.Count(2);
//        List<List> lists = service.fenLeiBy3(list);
//        List<Book> books = lists.get(0);
//        for (int i = 0; i < books.size(); i++) {
//            Book book = books.get(i);
//            System.out.println(book + "111111111111111");
//        }
        List<BookList>listall=new ArrayList<BookList>();
        List<Category>list1=category.getSubCats().get(0).getSubCats();
        for(int i=0;i<list1.size();i++){
            int a=list1.get(i).getId();
            String type=list1.get(i).getName();
            System.out.println(list1.get(i).getId());
            List<Book>list2=dao.findById(a);
            BookList bookList=new BookList(type,list2.size());
            listall.add(bookList);
        }


    }
}
