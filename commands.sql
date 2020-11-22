/*Create a new entry into the database, which already has your 10 initial entries*/
INSERT INTO user (first_name, last_name, email, username, username_id)
VALUES
("Isaiah","Johnson","IJohnson3@gmail.com","IJohn346", "11");
/*Create a new entry into the database, which already has your 10 initial entries*/
INSERT INTO password(passwordforwebsite, websitename, URL, commentonwebsite, passwordcreated, username_id, password_id)
VALUES
("IsaiahSports10","ESPN","https://espn.com","","Jul2016", "11","1");
/*Get the password associated with the URL of one of your 10 entries */
SELECT passwordforwebsite FROM password WHERE URL LIKE "http://www.zoom.us";
/*Get all the password-related data, including your password, associated with URLs that have https in one of your 10 entries*/
SELECT * FROM password WHERE URL like "https://www.google.com" ;
/*change a url associated with one of the passwords in your 10 entries*/
UPDATE password SET URL = "https://www.microsoft.com" WHERE URL = "https://www.hartford.edu";
/*change any password*/
UPDATE password SET passwordforwebsite = "(AES_ENCRYPT('JohnsonI332', UNHEX(SHA2('password',256)))" WHERE username_id = "7";
/*Remove any URL*/
UPDATE password SET URL = "" WHERE username_id = "6";
/*Remove a password*/
UPDATE password SET passwordforwebsite = "" WHERE username_id = "9";
