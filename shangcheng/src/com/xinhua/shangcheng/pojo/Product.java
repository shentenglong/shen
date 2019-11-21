package com.xinhua.shangcheng.pojo;

/**
 * @Author songsong
 * @Date 2019/10/31 14:31
 */
//id int(12) NOT NULL auto_increment,
//        product_name varchar(100) NOT NULL,
//        description varchar(100) default NULL,
//        add_time bigint(20) default NULL,
//        fixed_price double NOT NULL,
//        dang_price double NOT NULL,
//        keywords varchar(200) default NULL,
//        has_deleted int(1) NOT NULL default '0',
//        product_pic varchar(200) default NULL,
public class Product {
    private int Pid;
    private String product_name;
    private String description;
    private long add_time;
    private double fixed_price;
    private double dang_price;
    private String dkeywords ;
    private int has_deleted;
    private String product_pic;


    public Product() {
    }

    public int getPid() {
        return Pid;
    }

    public void setPid(int pid) {
        Pid = pid;
    }

    public String getProduct_name() {
        return product_name;
    }

    public Product(int pid, String product_name, String description, long add_time, double fixed_price, double dang_price, String dkeywords, int has_deleted, String product_pic) {
        Pid = pid;
        this.product_name = product_name;
        this.description = description;
        this.add_time = add_time;
        this.fixed_price = fixed_price;
        this.dang_price = dang_price;
        this.dkeywords = dkeywords;
        this.has_deleted = has_deleted;
        this.product_pic = product_pic;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    public String getDescription() {
        return description;

    }

    public void setDescription(String description) {
        this.description = description;
    }

    public long getAdd_time() {
        return add_time;
    }

    public void setAdd_time(long add_time) {
        this.add_time = add_time;
    }

    public double getFixed_price() {
        return fixed_price;
    }

    public void setFixed_price(double fixed_price) {
        this.fixed_price = fixed_price;
    }

    public double getDang_price() {
        return dang_price;
    }

    public void setDang_price(double dang_price) {
        this.dang_price = dang_price;
    }

    public String getDkeywords() {
        return dkeywords;
    }

    public void setDkeywords(String dkeywords) {
        this.dkeywords = dkeywords;
    }

    public int getHas_deleted() {
        return has_deleted;
    }

    public void setHas_deleted(int has_deleted) {
        this.has_deleted = has_deleted;
    }

    public String getProduct_pic() {
        return product_pic;
    }

    public void setProduct_pic(String product_pic) {
        this.product_pic = product_pic;
    }

    @Override
    public String toString() {
        return "Product{" +
                "Pid=" + Pid +
                ", description='" + description + '\'' +
                ", add_time=" + add_time +
                ", fixed_price=" + fixed_price +
                ", dang_price=" + dang_price +
                ", dkeywords='" + dkeywords + '\'' +
                ", has_deleted=" + has_deleted +
                ", product_pic='" + product_pic + '\'' +
                '}';
    }
}
