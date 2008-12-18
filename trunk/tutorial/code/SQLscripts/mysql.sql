-- run with mysql -p < mysql.sql
use mysql;

create database twatter_db;

use twatter_db;

create table friends (
  id bigint primary key,
  screen_name varchar(100),
  name varchar(100),
  description varchar(1000),
  location varchar(200),
  url varchar(1000),
  image_url varchar(1000)
);

create table tweets (
  id bigint primary key,
  created datetime,
  text varchar(200),
  friend_id bigint references friends (id)
);

grant all on twatter_db.* to 'twatter_user'@'%' identified by 'twatter_pass';
