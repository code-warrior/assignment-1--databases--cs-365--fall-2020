DROP DATABASE IF EXISTS passwords;

CREATE DATABASE passwords;

USE passwords;

CREATE TABLE website (
    website_id  SMALLINT(3) NOT NULL,
    website_name VARCHAR(128) NOT NULL,
    website_url VARCHAR(128) NOT NULL,
    PRIMARY KEY (website_id)
);

CREATE TABLE comment (
    website_id  SMALLINT(3) NOT NULL,
    comment_id  SMALLINT(3) NOT NULL,
    comment     VARCHAR(512) NOT NULL,
    PRIMARY KEY (website_id, comment_id)
);

CREATE TABLE user (
    website_id  SMALLINT(3) NOT NULL,
    username_id SMALLINT(4) NOT NULL,
    username    VARCHAR(128) NOT NULL,
    email       VARCHAR(128) NOT NULL,
    f_name      VARCHAR(64) NOT NULL,
    l_name      VARCHAR(64) NOT NULL,
    PRIMARY KEY (website_id, username_id)
);

CREATE TABLE pass (
    website_id  SMALLINT(3) NOT NULL,
    username_id SMALLINT(4) NOT NULL,
    password_encrpt VARBINARY(128) NOT NULL,
    password_time VARCHAR(10) NOT NULL,
    PRIMARY KEY (website_id, username_id)
);
