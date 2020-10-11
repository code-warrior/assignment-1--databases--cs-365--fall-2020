CREATE DATABASE passwords DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;

USE passwords;

CREATE TABLE users (
  user_id int NOT NULL PRIMARY KEY,
  first_name varchar(25) NOT NULL,
  last_name varchar(25) NOT NULL,
  email_address varchar(25) NOT NULL
);

CREATE TABLE websites (
  website_id int NOT NULL PRIMARY KEY,
  website_address varchar(50) NOT NULL,
  website_name varchar(25) NOT NULL
);

CREATE TABLE accounts (
  account_id int NOT NULL PRIMARY KEY,
  user_id int,
  website_id int,
  username varchar(50) NOT NULL,
  password_hash varchar(50) NOT NULL,
  comment text,
  stamp datetime DEFAULT CURRENT_TIMESTAMP
);
