/*/*
Passwords Project
Erik Rodriguez
Principles of Database Systems Fall 2020
Prof. Venagas
10/12/2020

Purpose: Create a passwords database for a user. There are different ways of approaching this project. This code follows the series of lecture in class were ID's are used to identify different things
in multiple tables. Another approach would be to combine all the user information (name, email, comment and time stamp) in one table.
*/

drop database if exists passwords; /*Deletes database*/
create database passwords; /*Creates new database*/
use passwords; /*Brings focus to Inventory database*/

SELECT * FROM user; /*Shows contents of user table*/
SELECT * FROM websites; /*Shows contents of websites table*/
SELECT * FROM usernames; /*Shows contents of usernames table*/
SELECT * FROM password; /*Shows contents of password table that are encrypted*/

/*To create a new entry*/
INSERT INTO websites VALUES (1,11,"INSERT WEBSITE NAME", "INSERT WEBSITE URL"); /*Inserting a new website into the the website table*/
INSERT INTO usernames VALUES (1,11,11, "INSERT USER NAME"); /*Inserting a new username into the data base*/
INSERT INTO password VALUES (1, 11, 11, 11, AES_ENCRYPT("INSERT NEW PASSWORD", "FastandFurious")); /*Inserting a new password into the data base*/
INSERT INTO time_created VALUES (1, 11, 11, 11, 11, "INSERT DATE AND TIME HERE"); /*Inserting a new time stamp into the data base*/
INSERT INTO comments VALUES (1, 11, 11, 11, 11, 11, "INSERT COMMENT HERE"); /*Inserting a new comment into the data base*/

/*To get the password associated with one of the entries*/
SELECT user_first, user_last, user_email, website_name, website_url, username_name, CAST(AES_DECRYPT(password_word, "FastandFurious") AS CHAR) FROM websites
  INNER JOIN user USING (user_id)
  INNER JOIN usernames USING (website_id)
  INNER JOIN password USING (website_id)
  WHERE website_name LIKE "INSERT WEBSITE NAME HERE";

SELECT password_id = 1, CAST(AES_DECRYPT(password_word, "FastandFurious") AS CHAR) FROM password; /*Command if one wants to decrpyt entire password table*/

/*To get all the password associated with all ten entries containing https*/
SELECT user_first, user_last, user_email, website_name, website_url, username_name, CAST(AES_DECRYPT(password_word, "FastandFurious") AS CHAR) FROM websites
  INNER JOIN user USING (user_id)
  INNER JOIN usernames USING (website_id)
  INNER JOIN password USING (website_id)
  WHERE website_url LIKE "https%";

/*To change a URL with one of the password */
UPDATE websites SET website_url = "INSERT NEW URL HERE" WHERE website_id = *INSERT CORESPONDING ID HERE*;

/*To change any password*/
UPDATE password SET password_word = AES_ENCRYPT(*"NEW PASSWORD"*, "FastandFurious") WHERE website_id = *WEBSITE_ID*; /*update password for existing password*/

/*Remove a URL*/
DELETE FROM websites WHERE website_id = "INSERT website id HERE";

/*Remove a password*/
DELETE FROM password WHERE CAST(AES_DECRYPT(password_word, "FastandFurious") AS CHAR) LIKE "INSERT PASSWORD HERE";
