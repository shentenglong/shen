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