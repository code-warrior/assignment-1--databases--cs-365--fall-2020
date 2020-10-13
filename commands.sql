\d //   

INSERT INTO account VALUES (10, "Amazon", "https://www.amazon.com", "Amazon comment", "TimAmazon", "TimEmail123@email.com", "Timothy", "Kodz", AES_ENCRYPT('Testpass10', UNHEX(SHA2('Password Encoder', 512))), "14/03/2017") //

SET @pass_encrypt = (SELECT password_encrypt FROM account WHERE website_url LIKE "https://www.tumblr.com/"); 
    SET @pass_decrypt = (AES_DECRYPT(@pass_encrypt, UNHEX(SHA2('Password Encoder', 512)))); 
    SELECT @pass_decrypt//

SELECT * FROM account WHERE website_url LIKE "https%"//

UPDATE account SET website_url="https://www.twitter.com/" WHERE account_id = 2//

UPDATE account SET password_encrypt = AES_ENCRYPT('UpdatePass9', UNHEX(SHA2('Password Encoder', 512))) WHERE account_id = 9//

DELETE FROM account WHERE website_url = "https://mix.com/";

UPDATE account SET website_url="" WHERE account_id=2;

DELETE FROM account WHERE website_url = "https://mix.com/";
