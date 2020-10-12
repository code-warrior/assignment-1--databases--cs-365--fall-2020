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

CREATE TABLE account (
  user_id    SMALLINT(5) NOT NULL,
  site_id    SMALLINT(5) NOT NULL,
  account_id SMALLINT(5) NOT NULL,
  username   VARCHAR(60) NOT NULL,
  password   VARCHAR(60) NOT NULL,
  email      VARCHAR(60) NOT NULL,
  time       TIMESTAMP   NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  comment      VARCHAR(200),
  PRIMARY KEY (user_id, site_id, account_id)
);

/* insert values */

INSERT INTO user VALUES (1,"Harry","Potter");
INSERT INTO user VALUES (2,"Ron","Weasly");
INSERT INTO user VALUES (3,"Hermione","Granger");

INSERT INTO site VALUES (1, "Youtube", "https://www.youtube.com/");
INSERT INTO site VALUES (2, "facebook", "https://www.facebook.com/");
INSERT INTO site VALUES (3, "Minecraft", "https://www.minecraft.net/");
INSERT INTO site VALUES (4, "Audible", "https://www.audible.com/");
INSERT INTO site VALUES (5, "Pottermore", "https://www.wizardingworld.com/");

INSERT INTO account VALUES (1, 1, 1,"lightningScar",AES_ENCRYPT("kachow!kachow","rowling"),"hotpot@gmail.com");
INSERT INTO account VALUES (3, 1, 1,"brightFutureAhead",AES_ENCRYPT("nodistractions","rowling"),"hermione_granger@gmail.com","FOR EDUCATIONAL VIDEOS ONLY.");
INSERT INTO account VALUES (3, 1, 2,"nerdybirdy400",AES_ENCRYPT("whyn0tRavens?","rowling"),"witch1@gmail.com","For casual entertainment videos.");

INSERT INTO account VALUES (1, 2, 1,"hotpot",AES_ENCRYPT("wishIwasm4gic","rowling"),"hotpot@gmail.com","Don't really use facebook anymore but idk how to delete.");

INSERT INTO account VALUES (1, 3, 1,"theblockwholived",AES_ENCRYPT("mashedpotatoes","rowling"),"im_a_wizard@gmail.com");
INSERT INTO account VALUES (2, 3, 2,"TheKing",AES_ENCRYPT("checkmate","rowling"),"what_is_email@hotmail.com");

