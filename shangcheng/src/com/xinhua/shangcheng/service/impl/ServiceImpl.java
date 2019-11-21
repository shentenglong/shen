package com.xinhua.shangcheng.service.impl;

import com.xinhua.shangcheng.dao.ShangChengDao;
import com.xinhua.shangcheng.dao.impl.ShangChengDaoImpl;
import com.xinhua.shangcheng.pojo.Book;
import com.xinhua.shangcheng.pojo.BookList;
import com.xinhua.shangcheng.pojo.Category;
import com.xinhua.shangcheng.pojo.User;
import com.xinhua.shangcheng.service.Service;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Properties;

/**
 * Created by Administrator on 2019/10/30.
 */
public class ServiceImpl implements Service {
    ShangChengDao dao=new ShangChengDaoImpl();

    @Override
    public User findByEmali(String email) throws Exception {
        User user=dao.findByEmali(email);
        return user;
    }

    @Override
    public void saveByUser(User user) throws Exception {
        dao.saveByUser(user);
    }

    @Override
    public void fromMail(User user) throws Exception {
        String from = "271129881@qq.com";
        String to = user.getEmail();
        String subject = "test";
        String body = user.getEmail_verify_code();
        String smtpHost = "smtp.qq.com";
        Properties props = new Properties();
        props.setProperty("mail.transport.protocol", "smtp"); // 使用的协议（JavaMail规范要求）
        props.setProperty("mail.smtp.host", smtpHost); // 发件人的邮箱的 SMTP服务器地址
        props.setProperty("mail.smtp.auth", "true"); // 请求认证，参数名称与具体实现有关
        // 创建Session实例对象
        Session session = Session.getDefaultInstance(props);
        // 创建MimeMessage实例对象
        MimeMessage message = new MimeMessage(session);
        // 设置发件人
        message.setFrom(new InternetAddress(from));
        // 设置收件人
        message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
        // 设置发送日期
        message.setSentDate(new Date());
        // 设置邮件主题
        message.setSubject(subject);
        // 设置纯文本内容的邮件正文
        message.setText(body);
        // 保存并生成最终的邮件内容
        message.saveChanges();
        // 设置为debug模式, 可以查看详细的发送 log
        session.setDebug(true);
        // 获取Transport对象
        Transport transport = session.getTransport("smtp");
        // 第2个参数需要填写的是QQ邮箱的SMTP的授权码
        transport.connect(from, "ocqnpmdlhaoabjde");
        // 发送，message.getAllRecipients() 获取到的是在创建邮件对象时添加的所有收件人, 抄送人, 密送人
        transport.sendMessage(message, message.getAllRecipients());
        transport.close();

    }

    @Override
    public void updateCode(User user) throws Exception {
          dao.updateCode(user);
    }

    @Override
    public void updateTime(User user) throws Exception {
              dao.updateTime(user);
    }

    @Override
    public String login(String email, String pwd) throws Exception {
        User user=dao.findByEmali(email);
        int a=10;
        if(user==null){
            return "用户名不存在";
        }
        if(!user.getPassword().equals(pwd)){
            return "密码错误";
        }
        return a+"";
    }

    @Override
    public Category fenLei(List<Category> list) throws Exception {
        Category categoryMax=list.get(0);
        for(int i=0;i<list.size();i++){
            Category category=list.get(i);
            if(category.getParent_id()==1){
                categoryMax.getSubCats().add(category);
                int id=category.getId();
                for(int j=0;j<list.size();j++){
                    Category category1=list.get(j);
                    if(category1.getParent_id()==id){
                        category.getSubCats().add(category1);
                    }
                }
            }
        }
        return categoryMax;
    }

    @Override
    public List<List> fenLeiBy3(List<Book> list) throws Exception {
        List<List>lists=new ArrayList<List>();
        for(int i=1;i<=list.size();i++){
            if(i%3==0){
                List<Book>list0=new ArrayList<Book>();
                list0.add(list.get(i-3));
                list0.add(list.get(i-2));
                list0.add(list.get(i-1));
                lists.add(list0);
                if((i+1)==list.size()){
                    List<Book>list1=new ArrayList<Book>();
                    list1.add(list.get(i));
                    lists.add(list1);
                }
                if((i+2)==list.size()){
                    List<Book>list1=new ArrayList<Book>();
                    list1.add(list.get(i));
                    list1.add(list.get(i+1));
                    lists.add(list1);
                }
            }
        }
        return  lists;
    }

    @Override
    public List<BookList> liuLan(Category category) throws Exception {
        List<BookList>list=new ArrayList<BookList>();
        List<Category>list1=category.getSubCats().get(0).getSubCats();
        for(int i=0;i<list1.size();i++){
            int a=list1.get(i).getId();
            String type=list1.get(i).getName();
            int id=list1.get(i).getId();
            List<Book>list2=dao.findById(a);
            BookList bookList=new BookList(type,list2.size(),id);
            list.add(bookList);
        }
        return list;
    }

    @Override
    public List<Book> Count(int id) throws Exception {
        if(id<9){
            List<Book>list=dao.Count(id);
            return list;
        }
        else {
            List<Book>list=dao.findById(id);
            return list;
        }
    }
}

