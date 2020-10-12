DROP DATABASE IF EXISTS passwords;

CREATE DATABASE passwords DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;

USE passwords;

/* create tables */

CREATE TABLE user (
  user_id    SMALLINT(5) NOT NULL,
  firstname VARCHAR(60) NOT NULL,
  lastname  VARCHAR(60) NOT NULL,
  PRIMARY KEY (user_id)
);

CREATE TABLE site (
  site_id SMALLINT(5)  NOT NULL,
  website VARCHAR(128) NOT NULL,
  url     VARCHAR(128) NOT NULL,
  PRIMARY KEY (site_id)
);

