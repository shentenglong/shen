package com.xinhua.shangcheng.pojo;

import java.util.ArrayList;
import java.util.List;

/**
 * 表示购物车对象
 * 保存所有加入购物车的商品信息集合
 * 可以对购物车中的商品进行修改
 *    添加
 *    删除
 *    修改数量
 *    计算总价
 *    清空购物车
 *    等功能
 * @Author songsong
 * @Date 2019/10/22 15:22
 */
public class Cart {
    //创建List集合用来存储所有的购物产品信息
     List<Item> items = new ArrayList<Item>();
     List<Item> deletes=new ArrayList<Item>();
    public boolean addItem(Item item){
        for(Item item1:items){
            if(item1.getBook().getId()==item.getBook().getId()){
                return false;
            }
        }
        items.add(item);
        return true;
    }
    public List<Item> getItems() {
        return items;
    }

    public void setItems(List<Item> items) {
        this.items = items;
    }

    public List<Item> getDeletes() {
        return deletes;
    }

    public void setDeletes(List<Item> deletes) {
        this.deletes = deletes;
    }

    public void update(int id, int qty){
        for(Item item1:items) {
            if(item1.getBook().getId()==id){
                item1.setQty(qty);
            }
        }
    }
    public void delete(Book book){
        for(int i=0;i<items.size();i++){
            Item item = items.get(i);
            if(item.getBook().getId()==book.getId()){
                items.remove(item);
                deletes.add(item);
            }
        }
    }
    public void huifu(Book book){
        for(int i=0;i<deletes.size();i++){
            Item item = items.get(i);
            if(item.getBook().getId()==book.getId()){
                deletes.remove(item);
                items.add(item);
            }
        }
    }
}
