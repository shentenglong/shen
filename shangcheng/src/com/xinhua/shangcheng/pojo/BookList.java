package com.xinhua.shangcheng.pojo;

/**
 * Created by Administrator on 2019/11/3.
 */
public class BookList {
    String type;
    int number;
    int id;

    public BookList(String type, int number) {
        this.type = type;
        this.number = number;
    }

    public BookList() {
    }

    public BookList(String type, int number, int id) {
        this.type = type;
        this.number = number;
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "BookList{" +
                "type='" + type + '\'' +
                ", number=" + number +
                '}';
    }
}
