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

INSERT INTO website VALUES (0, "Facebook", "https://www.facebook.com/");
INSERT INTO website VALUES (1, "Instagram", "https://www.instagram.com/");
INSERT INTO website VALUES (2, "Twitter", "https://twitter.com/");
INSERT INTO website VALUES (3, "Tumblr", "https://www.tumblr.com/");
INSERT INTO website VALUES (4, "LinkedIn", "https://www.linkedin.com/");
INSERT INTO website VALUES (5, "WikiDot", "http://www.wikidot.com/");
INSERT INTO website VALUES (6, "Reddit", "https://www.reddit.com/");
INSERT INTO website VALUES (7, "Mix", "https://mix.com/");
INSERT INTO website VALUES (8, "MyShopify", "http://myshopify.com/");
INSERT INTO website VALUES (9, "UofWashington", "http://www.washington.edu/");

INSERT INTO comment VALUES (0, 0, "Facebook comment");
INSERT INTO comment VALUES (1, 0, "Instagram comment");
INSERT INTO comment VALUES (2, 0, "Twitter comment");
INSERT INTO comment VALUES (3, 0, "Tumblr comment");
INSERT INTO comment VALUES (4, 0, "LinkedIn comment");
INSERT INTO comment VALUES (5, 0, "WikiDot comment");
INSERT INTO comment VALUES (6, 0, "Reddit comment");
INSERT INTO comment VALUES (7, 0, "Mix comment");
INSERT INTO comment VALUES (8, 0, "MyShopify comment");
INSERT INTO comment VALUES (9, 0, "UofWashington comment");
