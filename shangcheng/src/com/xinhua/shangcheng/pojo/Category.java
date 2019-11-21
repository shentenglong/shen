package com.xinhua.shangcheng.pojo;

import java.util.ArrayList;
import java.util.List;

/**
 * 分类
 * @Author songsong
 * @Date 2019/10/31 14:39
 */
public class Category {
    private int id;
    private int turn;
    private String en_name;
    private String name;
    private String description;
    private int parent_id;

    //保存每一级子分类的所有对象
    List<Category> subCats = new ArrayList<Category>();

    public Category(int id, int turn, String en_name, String name, String description, int parent_id) {
        this.id = id;
        this.turn = turn;
        this.en_name = en_name;
        this.name = name;
        this.description = description;
        this.parent_id = parent_id;
    }

    public Category(int turn, String en_name, String name, String description, int parent_id) {
        this.turn = turn;
        this.en_name = en_name;
        this.name = name;
        this.description = description;
        this.parent_id = parent_id;
    }

    public Category() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getTurn() {
        return turn;
    }

    public void setTurn(int turn) {
        this.turn = turn;
    }

    public String getEn_name() {
        return en_name;
    }

    public void setEn_name(String en_name) {
        this.en_name = en_name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getParent_id() {
        return parent_id;
    }

    public void setParent_id(int parent_id) {
        this.parent_id = parent_id;
    }

    public List<Category> getSubCats() {
        return subCats;
    }

    public void setSubCats(List<Category> subCats) {
        this.subCats = subCats;
    }

    @Override
    public String toString() {
        return "Category{" +
                "id=" + id +
                ", turn=" + turn +
                ", en_name='" + en_name + '\'' +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", parent_id=" + parent_id +
                ", subCats=" + subCats +
                '}';
    }
}
