INSERT INTO website VALUES (11,'Netflix',  'https://www.netflix.com');

INSERT INTO account VALUES (11, 1, 'Leech', 'Von', 'leecher@gmail.com', 'vleech', AES_ENCRYPT('L^6lQ8KpYh', 'dansecretkey'), 'Streaming', CURRENT_TIMESTAMP);

SELECT CAST(AES_DECRYPT(password, 'dansecretkey') AS CHAR), url FROM website inner join account on website.website_id = account.website_id WHERE url like 'https://github.com';

SELECT website_name, url, first_name, last_name, email, username, CAST(AES_DECRYPT(password, 'dansecretkey') AS CHAR), time_stamp FROM website inner join account on website.website_id = account.website_id WHERE url like 'https%' LIMIT 1;

UPDATE website set url='http://www.facebook.com/login' WHERE website_name= "Facebook";

UPDATE account set password = AES_ENCRYPT('thisisanewpassword', 'dansecretkey') WHERE account_id = 1 AND website_id = 8;

/* Assuming that deleting a url means deleting all the information related to that website (if there was multiple accounts connected to that website, all of them would get deleted)*/
DELETE FROM website , account  USING website, account WHERE website.website_id = account.website_id and website.url = 'https://www.linkedin.com';

/* Assuming that deleting a password means deleting a specific account, so deleting from the acccount table only and leaving the website because I am assuming another account and password can exist to that website*/
DELETE FROM account WHERE website_id = 10 and account_id =1;

/*
If removing the url meant just removing the url column value for a specific website entry and leaving the rest of the information,
I  would remove NOT NULL for the url atribute and use the Update command to change the url field to NUll and the syntax would be:
UPDATE website SET url = null WHERE website_id = 5

and the same for removing a password if removing a password means just remove the password value from the password column for a specific entry and leave the other details as is,
then I would do the same thing as before, remove NOT NULL for the password atribute and use the Update command to change the password field to NUll and the syntax would be:
UPDATE account SET password = null WHERE website_id = 10 and account_id =1;*/
