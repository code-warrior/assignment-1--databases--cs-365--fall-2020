/*
Passwords Project
Erik Rodriguez
Principles of Database Systems Fall 2020
Prof. Venagas
10/12/2020

Purpose: Create a passwords database for a user. There are different ways of approaching this project. This code follows the series of lecture in class were ID's are used to identify different things
in multiple tables. Another approach would be to combine all the user information (name, email, comment and time stamp) in one table.
*/

DROP DATABASE IF EXISTS passwords; /*Deletes an existing database with the same name*/
CREATE DATABASE passwords; /*New database named passwords is made*/
USE passwords; /*Brings focus to the passwords database*/

/*Table created for users*/
CREATE TABLE user (
  user_id SMALLINT(1) NOT NULL, /*Declaring user id as a number*/
  user_first VARCHAR(128) NOT NULL, /*Declaring user's first name as a charagter string*/
  user_last VARCHAR(128) NOT NULL, /*Declaring user's last name as a charagter string*/
  user_email VARCHAR(128) NOT NULL, /*Declaring user's email as a charagter string*/
  PRIMARY KEY (user_id) /*Primary key to link tables together*/
);

/*Table created for users*/
CREATE TABLE websites (
  user_id SMALLINT(1) NOT NULL,  /*Declaring user id as a number*/
  website_id SMALLINT(15) NOT NULL,  /*Declaring website id as a number*/
  website_name VARCHAR(50) NOT NULL,  /*Declaring website name as a charagter string*/
  website_url VARCHAR(128) NOT NULL,  /*Declaring website url as a charagter string*/
  PRIMARY KEY (user_id, website_id) /*Primary key to link tables together*/
);

/*Table created for users*/
CREATE TABLE usernames (
  user_id SMALLINT(1) NOT NULL, /*Declaring user id as a number*/
  website_id SMALLINT(15) NOT NULL, /*Declaring website id as a number*/
  username_id SMALLINT(15) NOT NULL, /*Declaring username id as a number*/
  username_name VARCHAR(128) NOT NULL, /*Declaring username as a charagter string*/
  PRIMARY KEY (user_id, website_id, username_id) /*Primary key to link tables together*/
);

/*Table created for users*/
CREATE TABLE password (
  user_id SMALLINT(1) NOT NULL, /*Declaring user id as a number*/
  website_id SMALLINT(15) NOT NULL, /*Declaring website id as a number*/
  username_id SMALLINT(15) NOT NULL, /*Declaring username id as a number*/
  password_id SMALLINT(15) NOT NULL, /*Declaring password id as a number*/
  password_word VARBINARY(128) NOT NULL, /*Declaring password_word as a charagter string*/
  PRIMARY KEY (user_id, website_id, username_id, password_id) /*Primary key to link tables together*/
);

/*Table created for users*/
CREATE TABLE time_created (
  user_id SMALLINT(1) NOT NULL, /*Declaring user id as a number*/
  website_id SMALLINT(15) NOT NULL, /*Declaring website id as a number*/
  username_id SMALLINT(15) NOT NULL, /*Declaring username id as a number*/
  password_id SMALLINT(15) NOT NULL, /*Declaring password id as a number*/
  time_id SMALLINT(15) NOT NULL, /*Declaring time id as a number*/
  time_created VARCHAR(128) NOT NULL, /*Declaring time created as a charagter string*/
  PRIMARY KEY (user_id, website_id, username_id, password_id, time_id) /*Primary key to link tables together*/
);

/*Table created for users*/
CREATE TABLE comments (
  user_id SMALLINT(1) NOT NULL, /*Declaring user id as a number*/
  website_id SMALLINT(15) NOT NULL, /*Declaring website id as a number*/
  username_id SMALLINT(15) NOT NULL, /*Declaring username id as a number*/
  password_id SMALLINT(15) NOT NULL, /*Declaring password id as a number*/
  time_id SMALLINT(15) NOT NULL, /*Declaring time id as a number*/
  comment_id SMALLINT(15) NOT NULL, /*Declaring comment id as a number*/
  comments VARCHAR(128) NOT NULL, /*Declaring comments as a charagter string*/
  PRIMARY KEY (user_id, website_id, username_id, password_id, time_id, comment_id) /*Primary key to link tables together*/
);

/*Table created for users*/
INSERT INTO user VALUES (1, "Brian", "O'Conner", "O'ConnerB@gmail.com");

/*Table created for websites where the input argument is (user id , website id, website name, website url)*/
INSERT INTO websites VALUES (1, 1, "The Home Depot", "https://www.homedepot.com/");
INSERT INTO websites VALUES (1, 2, "Advanced Auto Parts", "https://shop.advanceautoparts.com/");
INSERT INTO websites VALUES (1, 3, "AutoZone", "https://www.autozone.com/");
INSERT INTO websites VALUES (1, 4, "Lowe's", "https://www.lowes.com/");
INSERT INTO websites VALUES (1, 5, "Amazon", "https://www.amazon.com/");
INSERT INTO websites VALUES (1, 6, "Youtube", "https://www.youtube.com/");
INSERT INTO websites VALUES (1, 7, "Car-Part", "https://www.car-part.com/");
INSERT INTO websites VALUES (1, 8, "Summit Racing Equipment", "https://www.summitracing.com/");
INSERT INTO websites VALUES (1, 9, "Milwaukee Tools", "https://www.milwaukeetool.com/");
INSERT INTO websites VALUES (1, 10, "Automotive Forums", "http://www.automotiveforums.com/");

/*Table created for usernames where the input argument is (user id, website id, username id, username)*/
INSERT INTO usernames VALUES (1, 1, 1, "MK4SupraMan");
INSERT INTO usernames VALUES (1, 2, 2, "GreenEclipseDriver");
INSERT INTO usernames VALUES (1, 3, 3, "SkylineRacer");
INSERT INTO usernames VALUES (1, 4, 4, "LancerEvolutioner");
INSERT INTO usernames VALUES (1, 5, 5, "CamaroDragRacer");
INSERT INTO usernames VALUES (1, 6, 6, "FordLightingDriver");
INSERT INTO usernames VALUES (1, 7, 7, "OfficerO'Conner");
INSERT INTO usernames VALUES (1, 8, 8, "BrianO'Spilner");
INSERT INTO usernames VALUES (1, 9, 9, "RacingCop101");
INSERT INTO usernames VALUES (1, 10, 10, "SubaruWRXRallier");

/*Table created for passwords where the input argument is (user id, website id, username id, password id, encypted command containing the password and key*/
INSERT INTO password VALUES (1, 1, 1, 1, AES_ENCRYPT("Y3ll0wTurtl3", "FastandFurious"));
INSERT INTO password VALUES (1, 2, 2, 2, AES_ENCRYPT("Sl0wSp33d100", "FastandFurious"));
INSERT INTO password VALUES (1, 3, 3, 3, AES_ENCRYPT("1nv1sibl326", "FastandFurious"));
INSERT INTO password VALUES (1, 4, 4, 4, AES_ENCRYPT("m00nr0v3r11", "FastandFurious"));
INSERT INTO password VALUES (1, 5, 5, 5, AES_ENCRYPT("s1gnst0p", "FastandFurious"));
INSERT INTO password VALUES (1, 6, 6, 6, AES_ENCRYPT("L1n3Y3ll0wDash", "FastandFurious"));
INSERT INTO password VALUES (1, 7, 7, 7, AES_ENCRYPT("y3ll0wL1ghtG0", "FastandFurious"));
INSERT INTO password VALUES (1, 8, 8, 8, AES_ENCRYPT("P0pP0ps", "FastandFurious"));
INSERT INTO password VALUES (1, 9, 9, 9, AES_ENCRYPT("RFIDD00rOpen", "FastandFurious"));
INSERT INTO password VALUES (1, 10, 10, 10, AES_ENCRYPT("Raspb3rryPiECU", "FastandFurious"));

/*Table created for time created where the input argument is (user id, website id, username id, password id, time created id and the date and time the account was created*/
INSERT INTO time_created VALUES (1, 1, 1, 1, 1, "June 12, 2001 09:23:57 AM");
INSERT INTO time_created VALUES (1, 2, 2, 2, 2, "December 20, 2003 16:11:02 PM");
INSERT INTO time_created VALUES (1, 3, 3, 3, 3, "November 1, 2000 11:38:42 AM");
INSERT INTO time_created VALUES (1, 4, 4, 4, 4, "April 4, 1999 08:12:10 AM");
INSERT INTO time_created VALUES (1, 5, 5, 5, 5, "January 16, 2001 17:28:47 PM");
INSERT INTO time_created VALUES (1, 6, 6, 6, 6, "October 2, 2005 15:10:22 PM");
INSERT INTO time_created VALUES (1, 7, 7, 7, 7, "April 26, 1999 10:30:01 AM");
INSERT INTO time_created VALUES (1, 8, 8, 8, 8, "February 10, 1999 13:12:11 PM");
INSERT INTO time_created VALUES (1, 9, 9, 9, 9, "September 30, 2000 14:50:55 PM");
INSERT INTO time_created VALUES (1, 10, 10, 10, 10, "March 20, 2003 09:10:24 AM");

/*Table created for comments where the input argument is (user id, website id, username id, password id, time created id, comment id and the comment that relates to what the account is for*/
INSERT INTO comments VALUES (1, 1, 1, 1, 1, 1, "The Home Depot account to order materials online.");
INSERT INTO comments VALUES (1, 2, 2, 2, 2, 2, "Advanced Autoparts account to look up and buy car parts.");
INSERT INTO comments VALUES (1, 3, 3, 3, 3, 3, "AutoZone account to look up and buy car parts.");
INSERT INTO comments VALUES (1, 4, 4, 4, 4, 4, "Lowe's account used to get materials online.");
INSERT INTO comments VALUES (1, 5, 5, 5, 5, 5, "Amazon account used to buy everything and anything from groceries to electronics.");
INSERT INTO comments VALUES (1, 6, 6, 6, 6, 6, "Youtube account used to like videos like car repair and reviews.");
INSERT INTO comments VALUES (1, 7, 7, 7, 7, 7, "Car-Part account to buy used car parts for car builds.");
INSERT INTO comments VALUES (1, 8, 8, 8, 8, 8, "Summit Racing Equipment account to buy brand new racing car parts.");
INSERT INTO comments VALUES (1, 9, 9, 9, 9, 9, "Milwuakee Tools account used to buy mechanic tools.");
INSERT INTO comments VALUES (1, 10, 10, 10, 10, 10, "Automotive Forum account to look up and ask repair questions.");
