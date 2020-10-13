/* Drop any existing database with the name passwords */
DROP DATABASE IF EXISTS passwords;

/* Create a database named passwords */
CREATE DATABASE passwords;

/* Use database passwords */
USE passwords;

/* Import data from setup.sql to the database */
source setup.sql;

/* Create table with all the data from the website entity */
CREATE TABLE website (
	web_url  VARCHAR (2000) NOT NULL,
	web_name VARCHAR(200)   NOT NULL,
	web_ssl  TINYINT(1)     NOT NULL,
	PRIMARY KEY (web_url)
);

/* Create table with all the data from the user entity */
CREATE TABLE user (
	web_url      SMALLINT(3)    NOT NULL,
	user_id      SMALLINT(3)    NOT NULL,
	first_name   VARCHAR(50)    NOT NULL,
	last_name    VARCHAR (50)   NOT NULL,
	email        VARCHAR (250)  NOT NULL,
	username     VARCHAR(50)    NOT NULL,
	password     VARBINARY(150) NOT NULL,
	created_at   TIMESTAMP      DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (web_id, user_id)
);

/* Create table with all the data from the comment entity */
CREATE TABLE comment (
	web_url      SMALLINT(3)    NOT NULL,
	user_id      SMALLINT(3)    NOT NULL,
	comment_id   SMALLINT(3)    NOT NULL,
	comment_text VARCHAR(50)    NOT NULL,
	PRIMARY KEY (web_id, user_id, comment_id)
);

/* Inserts data values into the website table */
INSERT INTO website VALUES ("https://twitter.com/",         "Twitter",          1);
INSERT INTO website VALUES ("https://www.youtube.com/",     "Youtube",          1);
INSERT INTO website VALUES ("https://www.instagram.com/",   "Instagram",        1);
INSERT INTO website VALUES ("https://www.twitch.tv/",       "Twitch",           1);
INSERT INTO website VALUES ("https://www.amazon.com/",      "Amazon",           1);
INSERT INTO website VALUES ("https://www.ebay.com/",        "Ebay",             1);
INSERT INTO website VALUES ("https://www.spotify.com/",     "Spotify",          1);
INSERT INTO website VALUES ("https://soundcloud.com/",      "Soundcloud",       1);
INSERT INTO website VALUES ("https://www.facebook.com/",    "Facebook",         1);
INSERT INTO website VALUES ("https://www.playstation.com/", "Sony Playstation", 1);

/* Inserts data values into the user table (encrypts passwords for the user) */
INSERT INTO user VALUES ("https://twitter.com/",         1, "Jeff", "Sanches", "sanches1234@gmail.com", "sanches1234", AES_ENCRYPT( 'Amazingtrout!@45', 'key_str'), TIMESTAMP);
INSERT INTO user VALUES ("https://www.youtube.com/",     1, "Jeff", "Sanches", "sanches1234@gmail.com", "sanches1234", AES_ENCRYPT( '78%HeLloVERDict', 'key_str'), TIMESTAMP);
INSERT INTO user VALUES ("https://www.instagram.com/",   1, "Jeff", "Sanches", "sanches1234@gmail.com", "sanches1234", AES_ENCRYPT( 'Cr34TivEM!nD', 'key_str'), TIMESTAMP);
INSERT INTO user VALUES ("https://www.twitch.tv/",       1, "Jeff", "Sanches", "sanches1234@gmail.com", "sanches1234", AES_ENCRYPT( 'Unforgiving2FooTBa!!', 'key_str'), TIMESTAMP);
INSERT INTO user VALUES ("https://www.amazon.com/",      1, "Jeff", "Sanches", "sanches1234@gmail.com", "sanches1234", AES_ENCRYPT( 'StreamingF34Rs##', 'key_str'), TIMESTAMP);
INSERT INTO user VALUES ("https://www.ebay.com/",        1, "Jeff", "Sanches", "sanches1234@gmail.com", "sanches1234", AES_ENCRYPT( 'QLSD3456!@H!', 'key_str'), TIMESTAMP);
INSERT INTO user VALUES ("https://www.spotify.com/",     1, "Jeff", "Sanches", "sanches1234@gmail.com", "sanches1234", AES_ENCRYPT( 'vkebijeigj!pFFR456FFE21@', 'key_str'), TIMESTAMP);
INSERT INTO user VALUES ("https://soundcloud.com/",      1, "Jeff", "Sanches", "sanches1234@gmail.com", "sanches1234", AES_ENCRYPT( 'LONGTIMEC0m!nG', 'key_str'), TIMESTAMP);
INSERT INTO user VALUES ("https://www.facebook.com/",    1, "Jeff", "Sanches", "sanches1234@gmail.com", "sanches1234", AES_ENCRYPT( 'FREETIME?WH4Tisth4T', 'key_str'), TIMESTAMP);
INSERT INTO user VALUES ("https://www.playstation.com/", 1, "Jeff", "Sanches", "sanches1234@gmail.com", "sanches1234", AES_ENCRYPT( 'Grasping4H!pp0', 'key_str'), TIMESTAMP);

/* Inserts data values into the comment table */
INSERT INTO comment VALUES("https://twitter.com/",         1, 1,  "");
INSERT INTO comment VALUES("https://www.youtube.com/",     1, 2,  "");
INSERT INTO comment VALUES("https://www.instagram.com/",   1, 3,  "");
INSERT INTO comment VALUES("https://www.twitch.tv/",       1, 4,  "");
INSERT INTO comment VALUES("https://www.amazon.com/",      1, 5,  "");
INSERT INTO comment VALUES("https://www.ebay.com/",        1, 6,  "");
INSERT INTO comment VALUES("https://www.spotify.com/",     1, 7,  "");
INSERT INTO comment VALUES("https://soundcloud.com/",      1, 8,  "");
INSERT INTO comment VALUES("https://www.facebook.com/",    1, 9,  "");
INSERT INTO comment VALUES("https://www.playstation.com/", 1, 10, "");
