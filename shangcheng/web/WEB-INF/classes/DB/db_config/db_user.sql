DROP TABLE IF EXISTS d_user;
CREATE TABLE d_user (
  id int(12) NOT NULL auto_increment,
  email varchar(50) NOT NULL,        
  nickname varchar(50) default NULL,   
  password varchar(50) NOT NULL,         
  user_integral int(12) NOT NULL default '0', 
  is_email_verify char(3) default 'N',                   
  email_verify_code varchar(50) default NULL,
  last_login_time bigint(20) default NULL,     
  last_login_ip varchar(15) default NULL,    
  PRIMARY KEY  (id),
  UNIQUE KEY email (email)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert into d_user(email,nickname,password)
values('@126.com','gr','123');