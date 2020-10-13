/*The first two commands require the delimiter to be changed from ';'
In this instance we use '//'*/
\d //   

/*Create a new entry into the database, which already hase your 10 initial entries*/
INSERT INTO account VALUES (10, "Amazon", "https://www.amazon.com", "Amazon comment", "TimAmazon", "TimEmail123@email.com", "Timothy", "Kodz", AES_ENCRYPT('Testpass10', UNHEX(SHA2('Password Encoder', 512))), "14/03/2017") //

/*Get the password associated with the URL of one of your 10 entries*/
SET @pass_encrypt = (SELECT password_encrypt FROM account WHERE website_url LIKE "https://www.tumblr.com/"); 
    SET @pass_decrypt = (AES_DECRYPT(@pass_encrypt, UNHEX(SHA2('Password Encoder', 512)))); 
    SELECT @pass_decrypt//

/*Get all the password-related data, including the password, associated with the URLs that have https in one of your 10 entries*/
SELECT * FROM account WHERE website_url LIKE "https%";

/*Change a URL associated with one of the passwords in your 10 entries*/
UPDATE account SET website_url="https://www.twitter.com/" WHERE account_id = 2;

/*Change any password*/
UPDATE account SET password_encrypt = AES_ENCRYPT('UpdatePass9', UNHEX(SHA2('Password Encoder', 512))) WHERE account_id = 9;

/*Remove a URL*/
UPDATE account SET website_url="" WHERE account_id=2;

/*Remove a password*/
DELETE FROM account WHERE website_url = "https://mix.com/";
