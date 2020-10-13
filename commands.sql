#display all of our tables
SELECT * FROM website_info;
SELECT * FROM user_id;
SELECT * FROM password_info;

#adding https:// to the beginning of our website_url entries:
SELECT CONCAT('https://', website_url) AS website_url FROM website_info;
SELECT CONCAT('https://', website_url) AS website_url FROM password_info;

#select an entry by user_id
SELECT * FROM user_info WHERE user_id = 'LebronJames';

#select an entry by website name
SELECT * FROM website_info WHERE website_name = 'espn.com';

#select an entry by website name and user_id
SELECT * FROM user_info WHERE website_name = 'espn.com' AND user_id = 'LebronJames';

#create a new entry
INSERT INTO website_info VALUES ('newEntry.com', 'https://www.newEntry.com');
INSERT INTO user_info VALUES ('newEntry.com', 'BobJohn', 'Bob', 'John', 'bobjohn@gmail.com', 10/11/2020);
INSERT INTO password_info VALUES ('newEntry.com','https://www.newEntry.com', 'BobJohn','unsafe_password', NULL);

#remove an entry
DELETE FROM website_info WHERE website_name = 'newEntry.com';
DELETE FROM user_info WHERE website_name = 'newEntry.com';
DELETE FROM password_info WHERE website_name = 'newEntry.com';

#locate a password by website_url
SELECT comment FROM password_info WHERE website_url = 'www.LetsRun.com';

#remove a password
DELETE FROM password_info WHERE website_name = 'espn.com';

#remove a website_url
DELETE FROM website_info WHERE website_url = 'www.espn.com';

#change a password
UPDATE password_info
SET password = 'still_an_unsafe_password'
WHERE user_id = 'JohnStacyFinancialAdvisor@outlook.com';
