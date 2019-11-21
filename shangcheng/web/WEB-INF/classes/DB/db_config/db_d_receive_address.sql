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

insert into d_receive_address values(1, 6,'Java','sun.cn','10000800','12345','67890');
insert into d_receive_address values(2, 6,'JavaJavaJava','ibm.cn','10000600','12345','67890');