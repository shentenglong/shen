DROP TABLE IF EXISTS d_product;

CREATE TABLE d_product (
  id int(12) NOT NULL auto_increment,  
  product_name varchar(100) NOT NULL,  
  description varchar(100) default NULL, 
  add_time bigint(20) default NULL,      
  fixed_price double NOT NULL,          
  dang_price double NOT NULL,           
  keywords varchar(200) default NULL,    
  has_deleted int(1) NOT NULL default '0', 
  product_pic varchar(200) default NULL,  
  PRIMARY KEY  (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO d_product VALUES (1,'上课头疼的故事','上课头疼的故事',1237873000234,200,180,'key',0,'16.jpg');
INSERT INTO d_product VALUES (2,'上课头疼的故事','上课头疼的故事',1237873000234,200,180,'key',0,'17.jpg');
INSERT INTO d_product VALUES (3,'上课头疼的故事','上课头疼的故事',1237873000234,200,180,'key',0,'18.jpg');
INSERT INTO d_product VALUES (4,'上课头疼的故事','上课头疼的故事',1237873000234,200,180,'key',0,'19.jpg');
INSERT INTO d_product VALUES (5,'上课头疼的故事','上课头疼的故事',1237873000234,200,180,'key',0,'20.jpg');
INSERT INTO d_product VALUES (6,'上课头疼的故事','上课头疼的故事',1237873000234,200,180,'key',0,'21.jpg');
INSERT INTO d_product VALUES (7,'上课头疼的故事','上课头疼的故事',1237873000234,200,180,'key',0,'22.jpg');
INSERT INTO d_product VALUES (8,'上课头疼的故事','上课头疼的故事',1237873000234,200,180,'key',0,'23.jpg');
INSERT INTO d_product VALUES (9,'上课头疼的故事','上课头疼的故事',1237873000234,200,180,'key',0,'24.jpg');
INSERT INTO d_product VALUES (10,'上课头疼的故事','上课头疼的故事',1237873000234,200,180,'key',0,'2.jpg');
INSERT INTO d_product VALUES (11,'上课头疼的故事','上课头疼的故事',1237873000234,200,180,'key',0,'3.jpg');
INSERT INTO d_product VALUES (12,'上课睡觉的故事','上课睡觉的故事',1237873000234,200,180,'key',0,'4.jpg');
INSERT INTO d_product VALUES (13,'上课睡觉的故事','上课睡觉的故事',1237873000234,200,180,'key',0,'5.jpg');
INSERT INTO d_product VALUES (14,'上课睡觉的故事','上课睡觉的故事',1237873000234,200,180,'key',0,'6.jpg');
INSERT INTO d_product VALUES (15,'上课睡觉的故事','上课睡觉的故事',1237873000234,200,180,'key',0,'7.jpg');
INSERT INTO d_product VALUES (16,'上课睡觉的故事','上课睡觉的故事',1237873000234,200,180,'key',0,'8.jpg');
INSERT INTO d_product VALUES (17,'上课睡觉的故事','上课睡觉的故事',1237873000234,200,180,'key',0,'9.jpg');
INSERT INTO d_product VALUES (18,'上课睡觉的故事','上课睡觉的故事',1237873000234,200,180,'key',0,'10.jpg');
INSERT INTO d_product VALUES (19,'上课睡觉的故事','上课睡觉的故事',1237873000234,200,180,'key',0,'11.jpg');
INSERT INTO d_product VALUES (20,'上课睡觉的故事','上课睡觉的故事',1237873000234,200,180,'key',0,'12.jpg');
INSERT INTO d_product VALUES (21,'上课睡觉的故事','上课睡觉的故事',1237873000234,200,180,'key',0,'13.jpg');
INSERT INTO d_product VALUES (22,'上课睡觉的故事','上课睡觉的故事',1237873000234,200,180,'key',0,'14.jpg');
INSERT INTO d_product VALUES (23,'上课睡觉的故事','上课睡觉的故事',1237873000234,200,180,'key',0,'15.jpg');

