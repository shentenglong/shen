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