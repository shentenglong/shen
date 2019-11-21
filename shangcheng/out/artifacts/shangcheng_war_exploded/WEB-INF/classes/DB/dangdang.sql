
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

INSERT INTO d_product VALUES (1,'文学回忆录','木心留给世界的礼物，陈丹青五年听课笔录',1237873000234,98.0,69.5,'key',0,'1.jpg');
INSERT INTO d_product VALUES (2,'蒋勋说红楼梦','（独家附赠：蒋勋讲《中国文学之美》之“红楼梦”cd碟一张，时长3小时）',1237873000234,280.0,140.0,'key',0,'2.jpg');
INSERT INTO d_product VALUES (3,'人生何处不离人','谁在唐诗中低吟浅唱，隐世才女白落梅清雅之作。',1237873000234,39.8,19.4,'key',0,'3.jpg');
INSERT INTO d_product VALUES (4,'烟月不知人事改','宋词中的悲欢离合',1237873000234,26.0,15.6,'key',0,'4.jpg');
INSERT INTO d_product VALUES (5,'九歌','诸神复活（林怀民 作序推荐;蒋勋解读《楚辞》之美，带你流浪到2000年前）',1237873000234,39,24,'key',0,'5.jpg');
INSERT INTO d_product VALUES (6,'蒋勋说唐诗宋词','全两册/国学大师解读诗歌之美',1237873000234,76.0,53.90,'key',0,'6.jpg');
INSERT INTO d_product VALUES (7,'安意如古典诗词系列','人生若只如初见/观音/当时只道是寻常',1237873000234,84.0,42.0,'key',0,'7.jpg');
INSERT INTO d_product VALUES (8,'当时只道是寻常','纳兰词的情意写真',1237873000234,28.0,14.0,'key',0,'8.jpg');
INSERT INTO d_product VALUES (9,'只为途中与你相见','仓央嘉措情诗赏析',1237873000234,28.0,14.0,'key',0,'9.jpg');
INSERT INTO d_product VALUES (10,'一生一代一双人','纳兰词的一往情深',1237873000234,26.8,5.4,'key',0,'10.jpg');
INSERT INTO d_product VALUES (11,'像唐诗一样生活','看著名作家冉云飞如何逆潮流而行，全新趣品大唐诗韵',1237873000234,32,22,'key',0,'11.jpg');
INSERT INTO d_product VALUES (12,'中国现代文学三十年','修订本',1237873000234,38.0,28.5,'key',0,'12.jpg');
INSERT INTO d_product VALUES (13,'人生不过一场绚烂花事','李清照：人生不过一场绚烂花事',1237873000234,23.8,11.9,'key',0,'13.jpg');
INSERT INTO d_product VALUES (14,'刘心武揭秘红楼梦','刘心武红楼探佚心得大集成，破解百年红楼梦未解之谜',1237873000234,112.0,56.0,'key',0,'14.jpg');
INSERT INTO d_product VALUES (15,'刘心武评点《金瓶梅》','刘心武再评经典 三十载心血倾注，妙解“天下第一奇书”',1237873000234,98.0,49.0,'key',0,'15.jpg');
INSERT INTO d_product VALUES (16,'红楼梦魇','张爱玲全集08,2012年全新修订版',1237873000234,29.5,22,'key',0,'16.jpg');
INSERT INTO d_product VALUES (17,'一生的读书计划','一生的读书计划',1237873000234,46.0,27.8,'key',0,'17.jpg');
INSERT INTO d_product VALUES (18,'蒋勋细说红楼梦有声书卷一','第1至第20回 （10张CD 碟、林青霞、海清、林怀民 诚挚推荐）',1237873000234,390.0,195.0,'key',0,'18.jpg');
INSERT INTO d_product VALUES (19,'中国古典诗词感发','中国古典诗词感发',1237873000234,39.0,29.5,'key',0,'19.jpg');
INSERT INTO d_product VALUES (20,'法国文学名家精选集','罗曼 罗兰、圣爱克絮佩里、柯莱特卷，全4册',1237873000234,140.0,140.0,'key',0,'20.jpg');
INSERT INTO d_product VALUES (21,'谈艺录(繁体)','谈艺录(繁体)',1237873000234,52.00,37,'key',0,'21.jpg');
INSERT INTO d_product VALUES (22,'闲看水浒','字缝里的梁山规则与江湖世界',1237873000234,28.0,14,'key',0,'22.jpg');
INSERT INTO d_product VALUES (23,'中国现代文学三十年','《中国现代文学三十年》学习指导',1237873000234,33.0,23,'key',0,'23.jpg');
INSERT INTO d_product VALUES (24,'美国文学简史','常耀信版《美国文学简史》配套辅导',1237873000234,28.0,14.0,'key',0,'24.jpg');



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

INSERT INTO d_book VALUES (1,'木心','广西师范大学出版社',1237873000234,'1万','1','100',1,NULL,'12345678','作者是好人','木心留给世界的礼物，陈丹青五年听课笔录');
INSERT INTO d_book VALUES (2,'蒋勋','上海三联',1237873000234,'1万','1','100',1,NULL,'12345678','作者是好人','（独家附赠：蒋勋讲《中国文学之美》之“红楼梦”cd碟一张，时长3小时）');
INSERT INTO d_book VALUES (3,'白落梅','金城出版社',1237873000234,'1万','1','100',1,NULL,'12345678','作者是好人','这真是一本好书啊');
INSERT INTO d_book VALUES (4,'白落梅','吉林出版集团有限责任公司',1237873000234,'1万','1','100',1,NULL,'12345678','作者是好人','这真是一本好书啊');
INSERT INTO d_book VALUES (5,'蒋勋','中国文联出版公司',1237873000234,'1万','1','100',1,NULL,'12345678','作者是好人','这真是一本好书啊');
INSERT INTO d_book VALUES (6,'蒋勋','中信出版社',1237873000234,'1万','1','100',1,NULL,'12345678','作者是好人','这真是一本好书啊');
INSERT INTO d_book VALUES (7,'安意如','人民文学出版社',1237873000234,'1万','1','100',1,NULL,'12345678','作者是好人','这真是一本好书啊');
INSERT INTO d_book VALUES (8,'安意如','人民文学出版社',1237873000234,'1万','1','100',1,NULL,'12345678','作者是好人','这真是一本好书啊');
INSERT INTO d_book VALUES (9,'霍洪声','中国三峡出版社',1237873000234,'1万','1','100',1,NULL,'12345678','作者是好人','这真是一本好书啊');
INSERT INTO d_book VALUES (10,'梦江南','华文出版社',1237873000234,'1万','1','100',1,NULL,'12345678','作者是好人','这真是一本好书啊');
INSERT INTO d_book VALUES (11,'冉云飞','中国发展出版社',1237873000234,'1万','1','100',1,NULL,'12345678','作者是好人','这真是一本好书啊');
INSERT INTO d_book VALUES (12,'钱理群','北京大学出版社',1237873000234,'1万','1','100',1,NULL,'12345678','作者是好人','这真是一本好书啊');
INSERT INTO d_book VALUES (13,'李清照','机械工程出版社',1237873000234,'1万','1','100',1,NULL,'12345678','作者是好人','这真是一本好书啊');
INSERT INTO d_book VALUES (14,'刘心武','凤凰出版社',1237873000234,'1万','1','100',1,NULL,'12345678','作者是好人','这真是一本好书啊');
INSERT INTO d_book VALUES (15,'（明）兰陵笑笑生','漓江出版社',1237873000234,'1万','1','100',1,NULL,'12345678','作者是好人','这真是一本好书啊');
INSERT INTO d_book VALUES (16,'张爱玲','北京十月文艺出版社',1237873000234,'1万','1','100',1,NULL,'12345678','作者是好人','这真是一本好书啊');
INSERT INTO d_book VALUES (17,'[美国]克里夫顿·费迪曼','译林出版社',1237873000234,'1万','1','100',1,NULL,'12345678','作者是好人','这真是一本好书啊');
INSERT INTO d_book VALUES (18,'蒋勋','中国国际广播音像出版社',1237873000234,'1万','1','100',1,NULL,'12345678','作者是好人','这真是一本好书啊');
INSERT INTO d_book VALUES (19,'顾随','北京大学出版社',1237873000234,'1万','1','100',1,NULL,'12345678','作者是好人','这真是一本好书啊');
INSERT INTO d_book VALUES (20,'罗曼?罗兰、圣爱克絮佩里、柯莱特','北京燕山出版社',1237873000234,'1万','1','100',1,NULL,'12345678','作者是好人','这真是一本好书啊');
INSERT INTO d_book VALUES (21,'钱钟书','生活.读书.新知三联书店',1237873000234,'1万','1','100',1,NULL,'12345678','作者是好人','这真是一本好书啊');
INSERT INTO d_book VALUES (22,'十年砍柴','山西人民出版社发行部',1237873000234,'1万','1','100',1,NULL,'12345678','作者是好人','这真是一本好书啊');
INSERT INTO d_book VALUES (23,'温儒敏','北京大学出版社',1237873000234,'1万','1','100',1,NULL,'12345678','作者是好人','这真是一本好书啊');
INSERT INTO d_book VALUES (24,'赵红英','中国传媒大学出版社',1237873000234,'1万','1','100',1,NULL,'12345678','作者是好人','这真是一本好书啊');


DROP TABLE IF EXISTS d_category;
CREATE TABLE d_category (
  id int(12) NOT NULL auto_increment,
  turn int(10) NOT NULL,
  en_name varchar(200) NOT NULL,
  name varchar(200) NOT NULL,
  description varchar(200),
  parent_id int(10),
  PRIMARY KEY  (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO d_category VALUES (1,1,'Book','图书',NULL,0);
INSERT INTO d_category VALUES (2,1,'Novel','小说',NULL,1);
INSERT INTO d_category VALUES (3,2,'Youth','青春',NULL,1);
INSERT INTO d_category VALUES (4,3,'Humanity And Social Science','人文社科',NULL,1);
INSERT INTO d_category VALUES (5,4,'Management','管理',NULL,1);
INSERT INTO d_category VALUES (6,5,'Children','少儿',NULL,1);
INSERT INTO d_category VALUES (7,6,'Foreign Language','外语',NULL,1);
INSERT INTO d_category VALUES (8,7,'Computer','计算机',NULL,1);
INSERT INTO d_category VALUES (9,1,'Chinese Contemporary Novel','当代小说',NULL,2);
INSERT INTO d_category VALUES (10,2,'Chinese Modern Novel','近现代小说',NULL,2);
INSERT INTO d_category VALUES (11,3,'Chinese Classical  Novel','古典小说',NULL,2);
INSERT INTO d_category VALUES (12,4,'Four Classic Novels','四大名著',NULL,2);
INSERT INTO d_category VALUES (13,5,'Translated Works','世界名著',NULL,2);
INSERT INTO d_category VALUES (14,1,'School','校园',NULL,3);
INSERT INTO d_category VALUES (15,2,'Love','爱情/情感',NULL,3);
INSERT INTO d_category VALUES (16,3,'Grow Up','叛逆/成长',NULL,3);
INSERT INTO d_category VALUES (17,4,'Fantasy','玄幻',NULL,3);
INSERT INTO d_category VALUES (18,5,'Original','原创',NULL,3);
INSERT INTO d_category VALUES (19,1,'Political','政治',NULL,4);
INSERT INTO d_category VALUES (20,2,'Economic','经济',NULL,4);
INSERT INTO d_category VALUES (21,3,'Law','法律',NULL,4);
INSERT INTO d_category VALUES (22,4,'Philosophy','哲学',NULL,4);
INSERT INTO d_category VALUES (23,5,'History','历史',NULL,4);
INSERT INTO d_category VALUES (24,1,'Commen Management','管理学',NULL,5);
INSERT INTO d_category VALUES (25,2,'Strategic Management','战略管理',NULL,5);
INSERT INTO d_category VALUES (26,3,'Marketing','市场营销',NULL,5);
INSERT INTO d_category VALUES (27,4,'Business History','商业史传',NULL,5);
INSERT INTO d_category VALUES (28,5,'E-Business','电子商务',NULL,5);
INSERT INTO d_category VALUES (29,1,'0-2','0-2岁',NULL,6);
INSERT INTO d_category VALUES (30,2,'3-6','3-6岁',NULL,6);
INSERT INTO d_category VALUES (31,3,'7-10','7-10岁',NULL,6);
INSERT INTO d_category VALUES (32,4,'11-14','11-14岁',NULL,6);
INSERT INTO d_category VALUES (33,5,'Child Literature','儿童文学',NULL,6);
INSERT INTO d_category VALUES (34,1,'English','英语',NULL,7);
INSERT INTO d_category VALUES (35,2,'Japanese','日语',NULL,7);
INSERT INTO d_category VALUES (36,3,'Korean','韩语',NULL,7);
INSERT INTO d_category VALUES (37,4,'Russian','俄语',NULL,7);
INSERT INTO d_category VALUES (38,5,'German','德语',NULL,7);
INSERT INTO d_category VALUES (39,1,'Computer Theory','计算机理论',NULL,8);
INSERT INTO d_category VALUES (40,2,'Database','数据库',NULL,8);
INSERT INTO d_category VALUES (41,3,'Programming','程序设计',NULL,8);
INSERT INTO d_category VALUES (42,4,'Artificial Intelligence','人工智能',NULL,8);
INSERT INTO d_category VALUES (43,5,'Computer Examination','计算机考试',NULL,8);



DROP TABLE IF EXISTS d_category_product;
CREATE TABLE d_category_product (
  id int(12) NOT NULL auto_increment,
  product_id int(10) NOT NULL,
  cat_id int(10) NOT NULL,
  PRIMARY KEY  (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO d_category_product VALUES (1,1,9);
INSERT INTO d_category_product VALUES (2,2,9);
INSERT INTO d_category_product VALUES (3,3,9);
INSERT INTO d_category_product VALUES (4,4,9);
INSERT INTO d_category_product VALUES (5,5,9);
INSERT INTO d_category_product VALUES (6,6,9);
INSERT INTO d_category_product VALUES (7,7,9);
INSERT INTO d_category_product VALUES (8,8,9);
INSERT INTO d_category_product VALUES (9,9,9);
INSERT INTO d_category_product VALUES (10,10,9);
INSERT INTO d_category_product VALUES (11,11,10);
INSERT INTO d_category_product VALUES (12,12,10);
INSERT INTO d_category_product VALUES (13,13,10);
INSERT INTO d_category_product VALUES (14,14,10);
INSERT INTO d_category_product VALUES (15,15,10);
INSERT INTO d_category_product VALUES (16,16,10);
INSERT INTO d_category_product VALUES (17,17,10);
INSERT INTO d_category_product VALUES (18,18,10);
INSERT INTO d_category_product VALUES (19,19,10);
INSERT INTO d_category_product VALUES (20,20,10);
INSERT INTO d_category_product VALUES (21,21,10);
INSERT INTO d_category_product VALUES (22,22,10);
INSERT INTO d_category_product VALUES (23,23,10);
INSERT INTO d_category_product VALUES (24,24,10);

INSERT INTO d_category_product VALUES (25,1,2);
INSERT INTO d_category_product VALUES (26,2,2);
INSERT INTO d_category_product VALUES (27,3,2);
INSERT INTO d_category_product VALUES (28,4,2);
INSERT INTO d_category_product VALUES (29,5,2);
INSERT INTO d_category_product VALUES (30,6,2);
INSERT INTO d_category_product VALUES (31,7,2);
INSERT INTO d_category_product VALUES (32,8,2);
INSERT INTO d_category_product VALUES (33,9,2);
INSERT INTO d_category_product VALUES (34,10,2);
INSERT INTO d_category_product VALUES (35,11,2);
INSERT INTO d_category_product VALUES (36,12,2);
INSERT INTO d_category_product VALUES (37,13,2);
INSERT INTO d_category_product VALUES (38,14,2);
INSERT INTO d_category_product VALUES (39,15,2);
INSERT INTO d_category_product VALUES (40,16,2);
INSERT INTO d_category_product VALUES (41,17,2);
INSERT INTO d_category_product VALUES (42,18,2);
INSERT INTO d_category_product VALUES (43,19,2);
INSERT INTO d_category_product VALUES (44,20,2);
INSERT INTO d_category_product VALUES (45,21,2);
INSERT INTO d_category_product VALUES (46,22,2);
INSERT INTO d_category_product VALUES (47,23,2);
INSERT INTO d_category_product VALUES (48,24,2);

INSERT INTO d_category_product VALUES (49,1,1);
INSERT INTO d_category_product VALUES (50,2,1);
INSERT INTO d_category_product VALUES (51,3,1);
INSERT INTO d_category_product VALUES (52,4,1);
INSERT INTO d_category_product VALUES (53,5,1);
INSERT INTO d_category_product VALUES (54,6,1);
INSERT INTO d_category_product VALUES (55,7,1);
INSERT INTO d_category_product VALUES (56,8,1);
INSERT INTO d_category_product VALUES (57,9,1);
INSERT INTO d_category_product VALUES (58,10,1);
INSERT INTO d_category_product VALUES (59,11,1);
INSERT INTO d_category_product VALUES (60,12,1);
INSERT INTO d_category_product VALUES (61,13,1);
INSERT INTO d_category_product VALUES (62,14,1);
INSERT INTO d_category_product VALUES (63,15,1);
INSERT INTO d_category_product VALUES (64,16,1);
INSERT INTO d_category_product VALUES (65,17,1);
INSERT INTO d_category_product VALUES (66,18,1);
INSERT INTO d_category_product VALUES (67,19,1);
INSERT INTO d_category_product VALUES (68,20,1);
INSERT INTO d_category_product VALUES (69,21,1);
INSERT INTO d_category_product VALUES (70,22,1);
INSERT INTO d_category_product VALUES (71,23,1);
INSERT INTO d_category_product VALUES (72,24,1);

DROP TABLE IF EXISTS d_item;
CREATE TABLE d_item (
  id int(12) NOT NULL auto_increment,
  order_id int(10) NOT NULL,
  product_id int(10) NOT NULL,
  product_name varchar(100) NOT NULL,
  dang_price double NOT NULL,
  product_num int(10) NOT NULL,
  amount double NOT NULL,
  PRIMARY KEY  (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




DROP TABLE IF EXISTS d_order;
CREATE TABLE d_order (
  id int(10) NOT NULL auto_increment,
  user_id int(10) NOT NULL,
  status int(10) NOT NULL,
  order_time bigint(20) NOT NULL,
  order_desc varchar(100) default NULL,
  total_price double NOT NULL,
 
  receive_name varchar(100) default NULL,
  full_address varchar(200) default NULL,
  postal_code varchar(8) default NULL,
  mobile varchar(20) default NULL,
  phone varchar(20) default NULL,
  
  PRIMARY KEY  (id)
) ENGINE=InnoDB;


DROP TABLE IF EXISTS d_receive_address;
CREATE TABLE d_receive_address (
  id int(12) NOT NULL auto_increment,
  user_id int(11) NOT NULL,
  receive_name varchar(20) NOT NULL,
  full_address varchar(200) NOT NULL,
  postal_code varchar(8) NOT NULL,
  mobile varchar(15) default NULL,
  phone varchar(20) default NULL,
  PRIMARY KEY  (id)
) ENGINE=InnoDB;

DROP TABLE IF EXISTS d_user;
CREATE TABLE d_user (
  id int(12) NOT NULL auto_increment,
  email varchar(50) NOT NULL,
  nickname varchar(50) default NULL,
  password varchar(50) NOT NULL,
  user_integral int(12) NOT NULL default '0',
  is_email_verify char(3),
  email_verify_code varchar(50) default NULL,
  last_login_time bigint default NULL,
  last_login_ip varchar(15) default NULL,
  PRIMARY KEY  (id),
  UNIQUE KEY email (email)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS d_admin;
CREATE TABLE d_admin (
  id int(12) NOT NULL auto_increment,
  name varchar(50) NOT NULL,
  password varchar(50) NOT NULL,
  admin_grade int(12) NOT NULL default '0',
  PRIMARY KEY  (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO d_admin VALUES (1,'admin',123123,0);
INSERT INTO d_admin VALUES (2,'admin2',123123,1);
INSERT INTO d_admin VALUES (3,'admin3',123123,1);
INSERT INTO d_admin VALUES (4,'admin4',123123,1);
INSERT INTO d_admin VALUES (5,'admin5',123123,1);