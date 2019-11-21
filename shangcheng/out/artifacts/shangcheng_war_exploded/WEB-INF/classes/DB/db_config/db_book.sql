DROP TABLE IF EXISTS d_book;
CREATE TABLE d_book (
  id int(12) NOT NULL,
  author varchar(200) NOT NULL,      
  publishing varchar(200) NOT NULL,      
  publish_time bigint(20) NOT NULL,   
  word_number varchar(15) default NULL,  
  which_edtion varchar(15) default NULL, 
  total_page varchar(15) default NULL,  
  print_time int(20) default NULL,     
  print_number varchar(15) default NULL, 
  isbn varchar(25) default NULL,  
  author_summary text NOT NULL,     
  catalogue text NOT NULL,         
  PRIMARY KEY  (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO d_book VALUES (1,'我写的','地球出版社',1237873000234,'1万','1','100',1,NULL,'12345678','作者是好人','这真是一本好书啊');
INSERT INTO d_book VALUES (2,'我写的','地球出版社',1237873000234,'1万','1','100',1,NULL,'12345678','作者是好人','这真是一本好书啊');
INSERT INTO d_book VALUES (3,'我写的','地球出版社',1237873000234,'1万','1','100',1,NULL,'12345678','作者是好人','这真是一本好书啊');
INSERT INTO d_book VALUES (4,'我写的','地球出版社',1237873000234,'1万','1','100',1,NULL,'12345678','作者是好人','这真是一本好书啊');
INSERT INTO d_book VALUES (5,'我写的','地球出版社',1237873000234,'1万','1','100',1,NULL,'12345678','作者是好人','这真是一本好书啊');
INSERT INTO d_book VALUES (6,'我写的','地球出版社',1237873000234,'1万','1','100',1,NULL,'12345678','作者是好人','这真是一本好书啊');
INSERT INTO d_book VALUES (7,'我写的','地球出版社',1237873000234,'1万','1','100',1,NULL,'12345678','作者是好人','这真是一本好书啊');
INSERT INTO d_book VALUES (8,'我写的','地球出版社',1237873000234,'1万','1','100',1,NULL,'12345678','作者是好人','这真是一本好书啊');
INSERT INTO d_book VALUES (9,'我写的','地球出版社',1237873000234,'1万','1','100',1,NULL,'12345678','作者是好人','这真是一本好书啊');
INSERT INTO d_book VALUES (10,'我写的','地球出版社',1237873000234,'1万','1','100',1,NULL,'12345678','作者是好人','这真是一本好书啊');
INSERT INTO d_book VALUES (11,'我写的','地球出版社',1237873000234,'1万','1','100',1,NULL,'12345678','作者是好人','这真是一本好书啊');
INSERT INTO d_book VALUES (12,'我写的','地球出版社',1237873000234,'1万','1','100',1,NULL,'12345678','作者是好人','这真是一本好书啊');
INSERT INTO d_book VALUES (13,'我写的','地球出版社',1237873000234,'1万','1','100',1,NULL,'12345678','作者是好人','这真是一本好书啊');
INSERT INTO d_book VALUES (14,'我写的','地球出版社',1237873000234,'1万','1','100',1,NULL,'12345678','作者是好人','这真是一本好书啊');
INSERT INTO d_book VALUES (15,'我写的','地球出版社',1237873000234,'1万','1','100',1,NULL,'12345678','作者是好人','这真是一本好书啊');
INSERT INTO d_book VALUES (16,'我写的','地球出版社',1237873000234,'1万','1','100',1,NULL,'12345678','作者是好人','这真是一本好书啊');
INSERT INTO d_book VALUES (17,'我写的','地球出版社',1237873000234,'1万','1','100',1,NULL,'12345678','作者是好人','这真是一本好书啊');
INSERT INTO d_book VALUES (18,'我写的','地球出版社',1237873000234,'1万','1','100',1,NULL,'12345678','作者是好人','这真是一本好书啊');
INSERT INTO d_book VALUES (19,'我写的','地球出版社',1237873000234,'1万','1','100',1,NULL,'12345678','作者是好人','这真是一本好书啊');
INSERT INTO d_book VALUES (20,'我写的','地球出版社',1237873000234,'1万','1','100',1,NULL,'12345678','作者是好人','这真是一本好书啊');
INSERT INTO d_book VALUES (21,'我写的','地球出版社',1237873000234,'1万','1','100',1,NULL,'12345678','作者是好人','这真是一本好书啊');
INSERT INTO d_book VALUES (22,'我写的','地球出版社',1237873000234,'1万','1','100',1,NULL,'12345678','作者是好人','这真是一本好书啊');
INSERT INTO d_book VALUES (23,'我写的','地球出版社',1237873000234,'1万','1','100',1,NULL,'12345678','作者是好人','这真是一本好书啊');
INSERT INTO d_book VALUES (24,'我写的','地球出版社',1237873000234,'1万','1','100',1,NULL,'12345678','作者是好人','这真是一本好书啊');