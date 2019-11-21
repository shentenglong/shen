package com.xinhua.shangcheng.pojo;

import javax.xml.soap.Text;
import java.sql.ResultSet;

/**
 * @Author songsong
 * @Date 2019/10/31 14:31
// *///id int(12) NOT NULL,
//        author varchar(200) NOT NULL,
//        publishing varchar(200) NOT NULL,
//        publish_time bigint(20) NOT NULL,
//        word_number varchar(15) default NULL,
//        which_edtion varchar(15) default NULL,
//        total_page varchar(15) default NULL,
//        print_time int(20) default NULL,
//        print_number varchar(15) default NULL,
//        isbn varchar(25) default NULL,
//        author_summary text NOT NULL,
//        catalogue text NOT NULL,
public class Book extends Product {
        private int id;
        private String author;
        private String publishing;
        private long publish_time;
        private String word_number;
        private String which_edtion;
        private String total_page;
        private int print_time;
        private String print_number;
        private String isbn;
        private String author_summary;
        private String catalogue;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getPublishing() {
        return publishing;
    }

    public void setPublishing(String publishing) {
        this.publishing = publishing;
    }

    public long getPublish_time() {
        return publish_time;
    }

    public void setPublish_time(long publish_time) {
        this.publish_time = publish_time;
    }

    public String getWord_number() {
        return word_number;
    }

    public void setWord_number(String word_number) {
        this.word_number = word_number;
    }

    public String getWhich_edtion() {
        return which_edtion;
    }

    public void setWhich_edtion(String which_edtion) {
        this.which_edtion = which_edtion;
    }

    public String getTotal_page() {
        return total_page;
    }

    public void setTotal_page(String total_page) {
        this.total_page = total_page;
    }

    public int getPrint_time() {
        return print_time;
    }

    public void setPrint_time(int print_time) {
        this.print_time = print_time;
    }

    public String getPrint_number() {
        return print_number;
    }

    public void setPrint_number(String print_number) {
        this.print_number = print_number;
    }

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    public String getAuthor_summary() {
        return author_summary;
    }

    public void setAuthor_summary(String author_summary) {
        this.author_summary = author_summary;
    }

    public String getCatalogue() {
        return catalogue;
    }

    public void setCatalogue(String catalogue) {
        this.catalogue = catalogue;
    }

    public Book(int pid, String product_name, String description, long add_time, double fixed_price, double dang_price, String dkeywords, int has_deleted, String product_pic, int id, String author, String publishing, long publish_time, String word_number, String which_edtion, String total_page, int print_time, String print_number, String isbn, String author_summary, String catalogue) {
        super(pid, product_name, description, add_time, fixed_price, dang_price, dkeywords, has_deleted, product_pic);
        this.id = id;
        this.author = author;
        this.publishing = publishing;
        this.publish_time = publish_time;
        this.word_number = word_number;
        this.which_edtion = which_edtion;
        this.total_page = total_page;
        this.print_time = print_time;
        this.print_number = print_number;
        this.isbn = isbn;
        this.author_summary = author_summary;
        this.catalogue = catalogue;

    }

    @Override
    public String toString() {
        return "Book{" +
                "id=" + id +
                ", author='" + author + '\'' +
                ", publishing='" + publishing + '\'' +
                ", publish_time=" + publish_time +
                ", word_number='" + word_number + '\'' +
                ", which_edtion='" + which_edtion + '\'' +
                ", total_page='" + total_page + '\'' +
                ", print_time=" + print_time +
                ", print_number='" + print_number + '\'' +
                ", isbn='" + isbn + '\'' +
                ", author_summary='" + author_summary + '\'' +
                ", catalogue='" + catalogue + '\'' +
                '}';
    }

}
