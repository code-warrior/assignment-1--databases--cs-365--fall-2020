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
  url     VARCHAR(200) NOT NULL,
  PRIMARY KEY (site_id)
);

CREATE TABLE account (
  user_id    SMALLINT(5) NOT NULL,
  site_id    SMALLINT(5) NOT NULL,
  account_id SMALLINT(5) NOT NULL,
  username   VARCHAR(60) NOT NULL,
  password   VARBINARY(100) NOT NULL,
  email      VARCHAR(100) NOT NULL,
  time       TIMESTAMP   NOT NULL,
  comment    VARCHAR(200),
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
INSERT INTO site VALUES (6, "Google", "https://www.google.com/webhp?hl=en&ictx=2&sa=X&ved=0ahUKEwjovf6m6-brAhWkhOAKHaBNDx0QPQgI");

INSERT INTO account VALUES (1, 1, 1,"lightningScar",AES_ENCRYPT("kachow!kachow","rowling"),"hotpot@gmail.com",CURRENT_TIMESTAMP(),"");
INSERT INTO account VALUES (3, 1, 1,"brightFutureAhead",AES_ENCRYPT("nodistractions","rowling"),"hermione_granger@gmail.com",CURRENT_TIMESTAMP(),"FOR EDUCATIONAL VIDEOS ONLY.");
INSERT INTO account VALUES (3, 1, 2,"nerdybirdy400",AES_ENCRYPT("whyn0tRavens?","rowling"),"witch1@gmail.com",CURRENT_TIMESTAMP(),"For casual entertainment videos.");

INSERT INTO account VALUES (1, 2, 1,"hotpot",AES_ENCRYPT("wishIwasm4gic","rowling"),"hotpot@gmail.com",CURRENT_TIMESTAMP(),"Don't really use facebook anymore but idk how to delete.");

INSERT INTO account VALUES (1, 3, 1,"theblockwholived",AES_ENCRYPT("mashedpotatoes","rowling"),"im_a_wizard@gmail.com",CURRENT_TIMESTAMP(),"");
INSERT INTO account VALUES (2, 3, 2,"TheKing",AES_ENCRYPT("checkmate","rowling"),"what_is_email@hotmail.com",CURRENT_TIMESTAMP(),"");

INSERT INTO account VALUES (2, 4, 2,"mcronalds",AES_ENCRYPT("chudleycannons","rowling"),"what_is_email@hotmail.com",CURRENT_TIMESTAMP(),"Hermione recommended this for reading assignments.");
INSERT INTO account VALUES (3, 4, 1,"hermioneGranger7",AES_ENCRYPT("orthodontists","rowling"),"hermione_granger@gmail.com",CURRENT_TIMESTAMP(),"Useful for both school and free time.");

INSERT INTO account VALUES (1, 5, 1,"theboywholived",AES_ENCRYPT("chosen0ne","rowling"),"im_a_wizard@gmail.com",CURRENT_TIMESTAMP(),"Hermione told me to make an account for the extra lore?");
INSERT INTO account VALUES (3, 5, 1,"FreeHouseElves",AES_ENCRYPT("SPEWfor All","rowling"),"witch1@gmail.com",CURRENT_TIMESTAMP(),"Surprising amount of wizarding information on this site.");
