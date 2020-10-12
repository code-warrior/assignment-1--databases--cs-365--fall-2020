
DROP DATABASE IF EXISTS passwords;

CREATE DATABASE passwords;

USE passwords;

/* TABLES */
/* Base website information */
CREATE TABLE websites (
  website_id    SMALLINT(5) NOT NULL,
  website_URL   VARCHAR(128) NOT NULL,
  website_name  VARCHAR(128) NOT NULL,
  PRIMARY KEY(website_id)
);

/* User info independent of website user info */
CREATE TABLE userInfo (
  user_id     SMALLINT(5) NOT NULL,
  first_name  VARCHAR(128) NOT NULL,
  last_name   VARCHAR(128) NOT NULL,
  PRIMARY KEY(user_id)
);

/*user info with website info */
CREATE TABLE websiteInfo (
  user_id           SMALLINT(5) NOT NULL,
  website_id        SMALLINT(5) NOT NULL,
  website_username  VARCHAR(128),
  website_email     VARCHAR(128),
  website_password  VARBINARY(128) NOT NULL,
  Comment           VARCHAR(128) NOT NULL,
  time              INT(32) NOT NULL,
  PRIMARY KEY(user_id, website_id)
);


INSERT INTO websites VALUES(1, "https://github.com", "GitHub");
INSERT INTO websites VALUES(2, "https://facebook.com", "Facebook");
INSERT INTO websites VALUES(3, "https://twitter.com", "Twitter");
INSERT INTO websites VALUES(4, "https://blackboard.hartford.com", "Blackboard");
INSERT INTO websites VALUES(5, "https://stackoverflow.com", "Stackoverflow");
INSERT INTO websites VALUES(6, "https://instagram.com", "Instagram");
INSERT INTO websites VALUES(7, "https://outlook.office.365.com", "Microsoft Outlook");
INSERT INTO websites VALUES(8, "https://battle.net", "Battle Net");
INSERT INTO websites VALUES(9, "https://google.com", "Google");
INSERT INTO websites VALUES(10, "http://70.175.220.179:8080", "My web site, found on my GitHub");

INSERT INTO userInfo VALUES (1, "Tyler", "Reilly");


/* TODO Implement Change time to DATE joined website */
INSERT INTO websiteInfo VALUES (1, 1, "Treilly1999", "treilly@hartford.edu", AES_ENCRYPT("tylerissocool", "pass"), "Password for Github", CURRENT_TIME);
INSERT INTO websiteInfo VALUES (1, 2, NULL, "tylerreily99@yahoo.com", AES_ENCRYPT("tylerissosososocool", "tyler"), "Password for Facebook", CURRENT_TIME);
INSERT INTO websiteInfo VALUES (1, 3, "Idonthaveone69", "tylerreily99@yahoo.com", AES_ENCRYPT("asdknadadsa", "fas21"), "Password for Twitter", CURRENT_TIME);
INSERT INTO websiteInfo VALUES (1, 4, "treilly", "treilly@hartford.edu", AES_ENCRYPT("EJ10SALDMD", "kdfj"), "Password for Blackboard", CURRENT_TIME);
INSERT INTO websiteInfo VALUES (1, 5, "Treilly1999", "treilly@hartford.edu", AES_ENCRYPT("aODK81", "ijasdn"), "Password for Stackoverflow", CURRENT_TIME);
INSERT INTO websiteInfo VALUES (1, 6, "Reillysavage", "tylerreily99@yahoo.com", AES_ENCRYPT("e18jeidmsa", "8y3d"), "Password for Instagram", CURRENT_TIME);
INSERT INTO websiteInfo VALUES (1, 7, NULL, "treilly@hartford.edu", AES_ENCRYPT("aodjk2j1", "andyacvb"), "Password for Microsoft", CURRENT_TIME);
INSERT INTO websiteInfo VALUES (1, 8, "Gray", "tylerreily99@yahoo.com", AES_ENCRYPT("aduadnui3", "asd82he"), "Password for Battle.net", CURRENT_TIME);
INSERT INTO websiteInfo VALUES (1, 9, NULL, "tylerreily99@gmail.com", AES_ENCRYPT("idih123eind", "asdni2"), "Password for Google", CURRENT_TIME);
INSERT INTO websiteInfo VALUES (1, 10, "treilly", NULL, AES_ENCRYPT("abc123", "simple"), "Password for my website", CURRENT_TIME);
