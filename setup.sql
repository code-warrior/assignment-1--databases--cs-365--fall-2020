DROP DATABASE IF EXISTS passwords;

CREATE DATABASE passwords;

CHARACTER SET utf8mb4;

USE passwords;

CREATE TABLE website_info(
  website_name VARCHAR(128) NOT NULL,
  website_url VARCHAR(128) NOT NULL,
  PRIMARY KEY (website_name)
);

CREATE TABLE user_info(
  website_name VARCHAR(128) NOT NULL,
  user_id VARCHAR(128) NOT NULL,
  first_name CHAR(128) NOT NULL,
  last_name CHAR(128) NOT NULL,
  email VARCHAR(128), #email field can be null since the user_id can be an email
  account_created TIMESTAMP NOT NULL,
  PRIMARY KEY (website_name, user_id)
);

CREATE TABLE password_info(
    website_name VARCHAR(128) NOT NULL,
    website_url VARCHAR(128) NOT NULL,
    user_id VARCHAR(128) NOT NULL,
    password VARCHAR(256) NOT NULL,
    comment VARCHAR(128), #comment can be null
    PRIMARY KEY (website_name, user_id)
);

#filling website_info, we will add https:// extensions in the commands page
INSERT INTO website_info VALUES ('LetsRun.com', 'www.letsrun.com');
INSERT INTO website_info VALUES ('Hartford.edu', 'www.Hartford.edu');
INSERT INTO website_info VALUES ('CNN.com', 'www.cnn.com');
INSERT INTO website_info VALUES ('Spotify.com', 'www.Spotify.com');
INSERT INTO website_info VALUES ('Discord.com', 'www.Discord.com');
INSERT INTO website_info VALUES ('mysql.com', 'www.mysql.com');
INSERT INTO website_info VALUES ('Outlook.com', 'www.outlook.com');
INSERT INTO website_info VALUES ('food.com', 'www.food.com');
INSERT INTO website_info VALUES ('espn.com', 'www.espn.com');
INSERT INTO website_info VALUES ('google.com', 'www.google.com');

#filling user_info, using email and no email
INSERT INTO user_info VALUES ('Letsrun.com', 'JohnBob', 'John', 'Bob', 'johnbob@gmail.com', 10/11/2020);
INSERT INTO user_info VALUES ('Hartford.edu', 'JohnStacyFinancialAdvisor@outlook.com', 'John', 'Stacy', NULL , 10/08/2020);
INSERT INTO user_info VALUES ('CNN.com', 'theWizard', 'Mary', 'Stevenson', 'theWizard@comcast.net', 7/12/2020);
INSERT INTO user_info VALUES ('Spotify.com', 'Musiclover47', 'Cole', 'Cayer', 'colecayer@gmail.com', 10/22/2016);
INSERT INTO user_info VALUES ('Discord.com', 'BETTYBLUE@blue.com', 'Daniel', 'Reynolds', NULL , 6/17/2008); 
INSERT INTO user_info VALUES ('mysql.com', 'SQLHACKER', 'lorem', 'ipsum', 'dolor@hartford.edu', 4/4/2020);
INSERT INTO user_info VALUES ('speedtest.net', 'JohnBob', 'John', 'Bob', 'johnbob@gmail.com', 8/15/2020);
INSERT INTO user_info VALUES ('food.com', 'Dibs', 'David', 'Gardner', 'dgardner@outlook.com', 6/23/2020);
INSERT INTO user_info VALUES ('espn.com', 'LebronJames', 'Lebron', 'James', 'GOAT@gmail.com', 1/7/2020);
INSERT INTO user_info VALUES ('google.com', 'nickobrien@gmail.com', 'Nick', 'OBrien', NULL , 2/19/2020); #not a real account :)

#INSERT INTO password_info VALUES ('LetsRun.com','', 'JohnBob', AES_ENCRYPT('password',UNHEX(SHA2'passkey')), NULL); problem with encrypting passwords. They are encrypted into charactersets which are incompatable with utf8, causing ERROR 1366.
# tried things such as CONVERT(AES_ENCRYPT('password','passkey') USING utf8) and changing default charset to utf8mb4 with no luck.

INSERT INTO password_info VALUES ('LetsRun.com','www.letsrun.com', 'JohnBob','unsafe_password', NULL);
INSERT INTO password_info VALUES ('Hartford.edu','www.Hartford.edu', 'JohnStacyFinancialAdvisor@outlook.com', 'unsafe_password', 'for college');
INSERT INTO password_info VALUES ('CNN.com','www.cnn.com', 'theWizard', 'unsafe_password', 'account for browsing news');
INSERT INTO password_info VALUES ('Spotify.com','www.Spotify.com', 'Musiclover47', 'unsafe_password', 'secondary account');
INSERT INTO password_info VALUES ('Discord.com','www.Discord.com', 'BETTYBLUE@blue.com', 'unsafe_password', 'for Dr. Rosienes class');
INSERT INTO password_info VALUES ('mysql.com','www.mysql.com', 'SQLHACKER', 'unsafe_password', NULL);
INSERT INTO password_info VALUES ('Outlook.com','www.outlook.com', 'JohnBob', 'unsafe_password', 'work email');
INSERT INTO password_info VALUES ('food.com','www.food.com', 'Dibs', 'unsafe_password', NULL);
INSERT INTO password_info VALUES ('espn.com','www.espn.com', 'LebronJames', 'unsafe_password', NULL);
INSERT INTO password_info VALUES ('google.com','www.google.com', 'nickobrien@gmail.com', 'unsafe_password', 'personal email');


#change source to commands file, MUST CHANGE DIRECTORY
source C:\Users\Nick\Desktop\Assignment1\commands.sql
