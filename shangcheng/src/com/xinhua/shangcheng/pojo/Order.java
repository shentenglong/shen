package com.xinhua.shangcheng.pojo;

/**
 * Created by Administrator on 2019/11/6.
 */
public class Order {
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public long getOrder_time() {
        return order_time;
    }

    public void setOrder_time(long order_time) {
        this.order_time = order_time;
    }

    public String getOrder_desc() {
        return order_desc;
    }

    public void setOrder_desc(String order_desc) {
        this.order_desc = order_desc;
    }

    public double getTotal_price() {
        return total_price;
    }

    public void setTotal_price(double total_price) {
        this.total_price = total_price;
    }

    public String getReceive_name() {
        return receive_name;
    }

    public void setReceive_name(String receive_name) {
        this.receive_name = receive_name;
    }

    public String getFull_address() {
        return full_address;
    }

    public void setFull_address(String full_address) {
        this.full_address = full_address;
    }

    public String getPostal_code() {
        return postal_code;
    }

    public void setPostal_code(String postal_code) {
        this.postal_code = postal_code;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    private int id;
    private int userId;
    private int status;
    private long order_time;
    private String order_desc;
    private double total_price;
    private String receive_name;
    private String full_address;
    private String postal_code;
    private String mobile;
    private String phone;

    public Order(int id, int userId, int status, long order_time, String order_desc, double total_price, String receive_name, String full_address, String postal_code, String mobile, String phone) {
        this.id = id;
        this.userId = userId;
        this.status = status;
        this.order_time = order_time;
        this.order_desc = order_desc;
        this.total_price = total_price;
        this.receive_name = receive_name;
        this.full_address = full_address;
        this.postal_code = postal_code;
        this.mobile = mobile;
        this.phone = phone;
    }

    public Order(int userId, int status, long order_time, String order_desc, double total_price, String receive_name, String full_address, String postal_code, String mobile, String phone) {
        this.userId = userId;
        this.status = status;
        this.order_time = order_time;
        this.order_desc = order_desc;
        this.total_price = total_price;
        this.receive_name = receive_name;
        this.full_address = full_address;
        this.postal_code = postal_code;
        this.mobile = mobile;
        this.phone = phone;
    }
}
