#display all of our tables
SELECT * FROM website_info;
SELECT * FROM user_id;
SELECT * FROM password_info;

#adding https:// to the beginning of some of our website_url entries:

#select an entry by user_id
SELECT * FROM user_info WHERE user_id = 'LebronJames';

#select an entry by website name
SELECT * FROM website_info WHERE website_name = 'espn.com';

#select an entry by website name and user_id
SELECT * FROM user_info WHERE website_name = 'espn.com' AND user_id = 'LebronJames';

#create a new entry into website_info
INSERT INTO website_info VALUES ('newEntry.com', 'https://www.newEntry.com');

#remove an entry from website_info
DELETE FROM website_info WHERE website_name = 'newEntry.com';

#locate a password by website_url
SELECT comment FROM password_info WHERE website_name = 'LetsRun.com';

#remove a password
DELETE FROM password_info WHERE website_name = 'espn.com';

#remove a website_url
DELETE FROM website_info WHERE website_url = 'www.espn.com';

#change a password
UPDATE password_info
SET password = ''
WHERE user_id = 'JohnStacyFinancialAdvisor@outlook.com';
