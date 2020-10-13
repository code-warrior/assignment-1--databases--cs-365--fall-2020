\d //   

INSERT INTO account VALUES (10, "Amazon", "https://www.amazon.com", "Amazon comment", "TimAmazon", "TimEmail123@email.com", "Timothy", "Kodz", AES_ENCRYPT('Testpass10', UNHEX(SHA2('Password Encoder', 512))), "14/03/2017") //

SET @pass_encrypt = (SELECT password_encrypt FROM account WHERE website_url LIKE "https://www.tumblr.com/"); 
    SET @pass_decrypt = (AES_DECRYPT(@pass_encrypt, UNHEX(SHA2('Password Encoder', 512)))); 
    SELECT @pass_decrypt//

SELECT * FROM account WHERE website_url LIKE "https%"//

