package com.xinhua.shangcheng.pojo;

/**
 * Created by Administrator on 2019/11/5.
 */
public class Address {
    private int id;
    private int userId;
    private String receive_name;
    private String full_address;
    private String postal_code;
    private String mobile;
    private String phone;

    public int getId() {
        return id;
    }

    public Address(String receive_name, String full_address, String postal_code, String mobile, String phone) {
        this.receive_name = receive_name;
        this.full_address = full_address;
        this.postal_code = postal_code;
        this.mobile = mobile;
        this.phone = phone;
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

    public Address(int id, int userId, String receive_name, String full_address, String postal_code, String mobile, String phone) {
        this.id = id;
        this.userId = userId;
        this.receive_name = receive_name;
        this.full_address = full_address;
        this.postal_code = postal_code;
        this.mobile = mobile;
        this.phone = phone;
    }

    @Override
    public String toString() {
        return "Address{" +
                "id=" + id +
                ", userId=" + userId +
                ", receive_name='" + receive_name + '\'' +
                ", full_address='" + full_address + '\'' +
                ", postal_code='" + postal_code + '\'' +
                ", mobile='" + mobile + '\'' +
                ", phone='" + phone + '\'' +
                '}';
    }
}
