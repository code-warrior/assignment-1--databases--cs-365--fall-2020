/*Create a new entry into the database, which already has your 10 initial entries*/
INSERT INTO user VALUES ("http://www.baidu.com/", 1, "Jeff", "Sanches", "sanches1234@gmail.com", "sanches1234", AES_ENCRYPT( 'R34chf0rTheSt@rs', 'key_str'), TIMESTAMP);

/* Get the password associated with the URL of one of your 10 entries */
SELECT password, AES_DECRYPT(password,'key_str') FROM user WHERE web_url = "https://twitter.com/";

/* Get all the password-related data, including the password, associated with URLs that have https in one of your 10 entries */
SELECT * FROM user WHERE web_ssl = 1;

/* Change any password */
UPDATE user SET password = AES_ENCRYPT('P3rryTh3P!Atipus','key_str') WHERE web_url = "https://twitter.com/";

/*Change a URL associated with one of the passwords in your 10 entries*/
UPDATE user SET web_url = "https://www.netflix.com" WHERE password = AES_ENCRYPT( 'Cr34TivEM!nD', 'key_str');

/* Remove a URL*/
DELETE FROM website WHERE web_url = "https://www.playstation.com/";

/*Remove a password*/
DELETE FROM user WHERE password = AES_ENCRYPT( 'Amazingtrout!@45', 'key_str');