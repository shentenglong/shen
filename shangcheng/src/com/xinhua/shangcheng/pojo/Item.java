package com.xinhua.shangcheng.pojo;

/**
 * 购物车商品条目,表示购物车中的一条商品信息
 *  包含 产品与数量
 * @Author songsong
 * @Date 2019/10/22 15:19
 */
public class Item {
    private Book book;
    private  int qty;

    public Item(Book book, int qty) {
        this.book = book;
        this.qty = qty;
    }

    public Item() {
    }

    public Book getBook() {
        return book;
    }

    public void setBook(Book book) {
        this.book = book;
    }

    public int getQty() {
        return qty;
    }

    public void setQty(int qty) {
        this.qty = qty;
    }

    @Override
    public boolean equals(Object obj) {
        Item item=(Item)obj;
        return this.getQty()==item.getQty()&&this.getBook().getId()==((Item) obj).getBook().getId();
    }

    @Override
    public String toString() {
        return "Item{" +
                "book=" + book +
                ", qty=" + qty +
                '}';
    }
}
