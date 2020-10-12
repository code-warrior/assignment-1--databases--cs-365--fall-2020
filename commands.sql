\d //   

INSERT INTO website VALUES (10, "Amazon", "https://www.amazon.com"); 
    INSERT INTO comment VALUES (10, 0, "Amazon comment"); 
    INSERT INTO user VALUES (10, 0, "TimAmazon", "TimEmail123@email.com", "Timothy", "Kodz"); 
    INSERT INTO pass VALUES (10, 0, AES_ENCRYPT('Testpass10', UNHEX(SHA2('Password Encoder', 512))), "14/03/2017"); //

SET @web_id = (SELECT website_id FROM website WHERE website_url="https://www.linkedin.com/"); 
    SET @pass_encrypt = (SELECT password_encrypt FROM pass WHERE website_id = @web_id); 
    SET @pass_decrypt = (AES_DECRYPT(@pass_encrypt, UNHEX(SHA2('Password Encoder', 512)))); 
    SELECT @pass_decrypt//

