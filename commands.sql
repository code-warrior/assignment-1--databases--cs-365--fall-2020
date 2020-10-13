SELECT * FROM users;
SELECT * FROM websites;
SELECT account_id, user_id, website_id, username, AES_DECRYPT(password_hash, 'CS365') AS plaintextpass, comment FROM accounts;

INSERT INTO accounts (account_id, user_id, website_id, username, password_hash, comment)
    VALUES (11, 2, 4, 'DannySteele', AES_ENCRYPT('steelyflix', 'CS365'), 'Danny\'s Netflix Account');

SELECT password_hash FROM accounts WHERE website_id = 1;

SELECT account_id, user_id, accounts.website_id, username, AES_DECRYPT(accounts.password_hash, 'CS365') AS plaintextpass, comment, websites.website_address FROM websites INNER JOIN accounts on accounts.website_id = websites.website_id WHERE website_address LIKE 'https:%%';

UPDATE websites SET website_address = 'https://www.netflicks.com' WHERE website_address LIKE '%netflix%';

UPDATE accounts SET password_hash = AES_ENCRYPT('betterpassword','CS365') WHERE account_id = 6;

DELETE FROM websites WHERE website_id = 2;

DELETE FROM accounts WHERE website_id = 2;

SELECT * FROM users;
SELECT * FROM websites;
SELECT account_id, user_id, website_id, username, AES_DECRYPT(password_hash, 'CS365') AS plaintextpass, comment FROM accounts;
