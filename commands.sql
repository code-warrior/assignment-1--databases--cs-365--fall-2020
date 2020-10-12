\d //   INSERT INTO website VALUES (10, "Amazon", "https://www.amazon.com"); 
        INSERT INTO comment VALUES (10, 0, "Amazon comment"); 
        INSERT INTO user VALUES (10, 0, "TimAmazon", "TimEmail123@email.com", "Timothy", "Kodz"); 
        INSERT INTO pass VALUES (10, 0, AES_ENCRYPT('Testpass10', UNHEX(SHA2('Password Encoder', 512))), "14/03/2017"); //

