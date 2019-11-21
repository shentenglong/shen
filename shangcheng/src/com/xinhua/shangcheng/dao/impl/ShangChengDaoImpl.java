package com.xinhua.shangcheng.dao.impl;


import com.xinhua.shangcheng.dao.ShangChengDao;
import com.xinhua.shangcheng.pojo.*;
import com.xinhua.shangcheng.service.Service;
import com.xinhua.shangcheng.service.impl.ServiceImpl;
import com.xinhua.shangcheng.util.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2019/10/30.
 */
public class ShangChengDaoImpl implements ShangChengDao {
    @Override
    public User findByEmali(String email) throws Exception {
        User user=null;
        Connection conn = DBUtil.getConnection();
        String sql = "select * from d_user where email=?";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, email);
        ResultSet rs = pstm.executeQuery();
        while (rs.next()) {
            int id = rs.getInt(1);
            String nickname = rs.getString(3);
            String password = rs.getString(4);
            int user_integral = rs.getInt(5);
            String is_email_verify = rs.getString(6);
            String email_verify_code = rs.getString(7);
            long last_login_time = rs.getLong(8);
            String last_login_ip = rs.getString(9);
            user = new User(id, email, nickname, password, user_integral, is_email_verify, email_verify_code, last_login_time, last_login_ip);
        }
        conn.close();
    return user;
    }

    @Override
    public void saveByUser(User user) throws Exception {
        Connection conn = DBUtil.getConnection();
        String sql="insert into d_user(email,nickname,password,user_integral,is_email_verify,email_verify_code,last_login_time,last_login_ip) VALUES (?,?,?,?,?,?,?,?)";
        PreparedStatement pstm=conn.prepareStatement(sql);
        pstm.setString(1,user.getEmail());
        pstm.setString(2,user.getNickname());
        pstm.setString(3,user.getPassword());
        pstm.setInt(4,user.getUser_integral());
        pstm.setString(5,user.getIs_email_verify());
        pstm.setString(6,user.getEmail_verify_code());
        pstm.setLong(7,user.getLast_login_time());
        pstm.setString(8,user.getLast_login_ip());
        pstm.executeUpdate();
    }

    @Override
    public void updateCode(User user) throws Exception {
        Connection conn = DBUtil.getConnection();
        String sql="UPDATE d_user SET is_email_verify=? WHERE email=?";
        PreparedStatement pstm=conn.prepareStatement(sql);
        pstm.setString(1,"true");
        pstm.setString(2,user.getEmail());
        pstm.executeUpdate();
    }

    @Override
    public void updateTime(User user) throws Exception {
        Connection conn = DBUtil.getConnection();
        String sql="UPDATE d_user SET last_login_time=? WHERE email=?";
        PreparedStatement pstm=conn.prepareStatement(sql);
        pstm.setLong(1,user.getLast_login_time());
        pstm.setString(2,user.getEmail());
        pstm.executeUpdate();
    }

    @Override
    public List<Category> findAll() throws Exception {
        List<Category> list=new ArrayList<Category>();
        Connection conn = DBUtil.getConnection();
        String sql="select * from d_category";
        PreparedStatement pstm=conn.prepareStatement(sql);
        ResultSet rs=pstm.executeQuery();
        while (rs.next()){
//            private int id;
//            private int turn;
//            private String en_name;
//            private String name;
//            private String description;
//            private int parent_id;
            int id=rs.getInt(1);
            int turn=rs.getInt(2);
            String en_name=rs.getString(3);
            String name=rs.getString(4);
            String description=rs.getString(5);
            int parent_id=rs.getInt(6);
            Category category=new Category(id,turn,en_name,name,description,parent_id);
            list.add(category);
        }
        return list;
    }

    @Override
    public List<Book> findAllBoos() throws Exception {
        List<Book> list=new ArrayList<Book>();
        Connection conn = DBUtil.getConnection();
        String sql="SELECT * FROM d_product  JOIN d_book ON d_product.id=d_book.id";
        PreparedStatement pstm=conn.prepareStatement(sql);
        ResultSet rs=pstm.executeQuery();
        while (rs.next()){
         int id=rs.getInt(1);
         String product_name=rs.getString(2);
         String description=rs.getString(3);
         long add_time=rs.getLong(4);
         double fixed_price=rs.getDouble(5);
         double dang_price=rs.getDouble(6);
         String dkeywords=rs.getString(7);
         int has_deleted=rs.getInt(8);
         String product_pic=rs.getString(9);
         String author=rs.getString(11);
         String publishing=rs.getString(12);
         long publish_time=rs.getLong(13);
         String word_number=rs.getString(14);
         String which_edtion=rs.getString(15);
         String total_page=rs.getString(16);
         int print_time=rs.getInt(17);
         String print_number=rs.getString(18);
         String isbn=rs.getString(19);
         String author_summary=rs.getString(20);
         String catalogue=rs.getString(21);
         Book book=new Book(id,product_name,description,add_time,fixed_price,dang_price,dkeywords,has_deleted,product_pic,id,author,publishing,publish_time,word_number,which_edtion,total_page,print_time,print_number,isbn,author_summary,catalogue);
         list.add(book);
        }
        return list;
    }

    @Override
    public List<Book> Count(int id) throws Exception {
        List<Book> list=findAllBoos();
        List<Book> list1=new ArrayList<Book>();
        Connection conn = DBUtil.getConnection();
        String sql="SELECT d_category_product.product_id FROM d_category_product WHERE cat_id=?;";
        PreparedStatement pstm=conn.prepareStatement(sql);
        pstm.setInt(1,id);
        ResultSet rs=pstm.executeQuery();
        while (rs.next()){
            int a=rs.getInt(1);
            for(int i=0;i<list.size();i++){
                if(list.get(i).getId()==a){
                    list1.add(list.get(i));
                }
            }
        }
        return list1;
    }

    @Override
    public List<Book> findById(int id) throws Exception {
        List<Book> list=findAllBoos();
        List<Book> list1=new ArrayList<Book>();
        Connection conn = DBUtil.getConnection();
        String sql="SELECT * FROM d_product JOIN d_category_product\n" +
                "ON  d_product.id=d_category_product.product_id WHERE d_category_product.cat_id=?;";
        PreparedStatement pstm=conn.prepareStatement(sql);
        pstm.setInt(1,id);
        ResultSet rs=pstm.executeQuery();
        while (rs.next()){
            int id1=rs.getInt(1);
            for(int i=0;i<list.size();i++){
                Book book=list.get(i);
                if(book.getId()==id1){
                    list1.add(book);
                }
            }

        }
        return list1;
    }

    @Override
    public String findName(int id) throws Exception {
        String name=null;
        Connection conn = DBUtil.getConnection();
        String sql="select name from d_category where id=?";
        PreparedStatement pstm=conn.prepareStatement(sql);
        pstm.setInt(1,id);
        ResultSet rs=pstm.executeQuery();
        while (rs.next()){
            name=rs.getString(1);
        }
        return name;
    }

    @Override
    public Book findBookById(int id) throws Exception {
        Book book = null;
        String sql = "SELECT * FROM d_product  JOIN d_book ON d_product.id=d_book.id WHERE d_product.id=?;";
        Connection conn = DBUtil.getConnection();
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setInt(1, id);
        ResultSet rs = pstm.executeQuery();
        while (rs.next()) {
            String product_name = rs.getString(2);
            String description = rs.getString(3);
            long add_time = rs.getLong(4);
            double fixed_price = rs.getDouble(5);
            double dang_price = rs.getDouble(6);
            String dkeywords = rs.getString(7);
            int has_deleted = rs.getInt(8);
            String product_pic = rs.getString(9);
            String author = rs.getString(11);
            String publishing = rs.getString(12);
            long publish_time = rs.getLong(13);
            String word_number = rs.getString(14);
            String which_edtion = rs.getString(15);
            String total_page = rs.getString(16);
            int print_time = rs.getInt(17);
            String print_number = rs.getString(18);
            String isbn = rs.getString(19);
            String author_summary = rs.getString(20);
            String catalogue = rs.getString(21);
            book = new Book(id, product_name, description, add_time, fixed_price, dang_price, dkeywords, has_deleted, product_pic, id, author, publishing, publish_time, word_number, which_edtion, total_page, print_time, print_number, isbn, author_summary, catalogue);
        }
        return book;
    }

    @Override
    public Address findAddressById(int id) throws Exception {
        Address address=null;
        Connection conn = DBUtil.getConnection();
        String sql="select * from  d_receive_address where user_id=?";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setInt(1, id);
        ResultSet rs = pstm.executeQuery();
        while (rs.next()){
//            private int id;
//            private int userId;
//            private String receive_name;
//            private String full_address;
//            private String postal_code;
//            private String mobile;
//            private String phone;
            int id1=rs.getInt("id");
            String receive_name=rs.getString("receive_name");
            String full_address=rs.getString("full_address");
            String postal_code=rs.getString("postal_code");
            String mobile=rs.getString("mobile");
            String phone=rs.getString("phone");
            address=new Address(id1,id,receive_name,full_address,postal_code,mobile,phone);
        }
        return address;
    }

    @Override
    public Address findAddressByAddress(String address) throws Exception {
        Address address1=null;
        Connection conn = DBUtil.getConnection();
        String sql="select * from  d_receive_address where full_address=?";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1,address);
        ResultSet rs = pstm.executeQuery();
        while (rs.next()){
            int id=rs.getInt("id");
            int userid=rs.getInt("user_id");
            String receive_name=rs.getString("receive_name");
            String full_address=rs.getString("full_address");
            String postal_code=rs.getString("postal_code");
            String mobile=rs.getString("mobile");
            String phone=rs.getString("phone");
            address1=new Address(id,userid,receive_name,full_address,postal_code,mobile,phone);
        }
        return address1;
    }

    @Override
    public void UpdateAddress(int id, Address address) throws Exception {
        Connection conn = DBUtil.getConnection();
        String sql="UPDATE d_receive_address SET receive_name=?,full_address=?,postal_code=?,\n" +
                "mobile=?,phone=? WHERE id=?;";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1,address.getReceive_name());
        pstm.setString(2,address.getFull_address());
        pstm.setString(3,address.getPostal_code());
        pstm.setString(4,address.getMobile());
        pstm.setString(5,address.getPhone());
        pstm.setInt(6,id);
        pstm.executeUpdate();
    }

    @Override
    public void addOrder(Order order) throws Exception {
        Connection conn = DBUtil.getConnection();
        String sql="insert into d_order(user_id,status,order_time,order_desc,total_price,receive_name,full_address,postal_code,mobile,phone) values(?,?,?,?,?,?,?,?,?,?);";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setInt(1,order.getUserId());
        pstm.setInt(2,order.getStatus());
        pstm.setLong(3,order.getOrder_time());
        pstm.setString(4,order.getOrder_desc());
        pstm.setDouble(5,order.getTotal_price());
        pstm.setString(6,order.getReceive_name());
        pstm.setString(7,order.getFull_address());
        pstm.setString(8,order.getPostal_code());
        pstm.setString(9,order.getMobile());
        pstm.setString(10,order.getPhone());
        pstm.executeUpdate();
    }

}
