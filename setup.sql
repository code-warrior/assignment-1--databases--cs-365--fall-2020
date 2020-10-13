DROP DATABASE passwords;

CREATE DATABASE passwords DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;

USE passwords;

\! echo 'Creating Tables...';

CREATE TABLE users (
  user_id int NOT NULL PRIMARY KEY,
  first_name varchar(25) NOT NULL,
  last_name varchar(25) NOT NULL,
  email_address varchar(25) NOT NULL
);

CREATE TABLE websites (
  website_id int NOT NULL PRIMARY KEY,
  website_address varchar(50) NOT NULL,
  website_name varchar(25) NOT NULL
);

CREATE TABLE accounts (
  account_id int NOT NULL PRIMARY KEY,
  user_id int,
  website_id int,
  username varchar(50) NOT NULL,
  password_hash varbinary(50) NOT NULL,
  comment text,
  stamp datetime DEFAULT CURRENT_TIMESTAMP
);

\! echo 'DONE!';

\! echo 'INSERTING DATA...';

INSERT INTO users VALUES (1, 'Joe', 'Schmoe', 'jschmoe@hotmail.com');
INSERT INTO users VALUES (2, 'Danny', 'Steele', 'steelydan@gmail.com');
INSERT INTO users VALUEs (3, 'Randy', 'Savage', 'themachoman@wwe.net');

INSERT INTO websites VALUES (1, 'https://www.amazon.com', 'Amazon');
INSERT INTO websites VALUES (2, 'http://www.catblog.com', 'Cat Blogs');
INSERT INTO websites VALUES (3, 'https://www.safebank.com', 'Safe Bank Online Banking');
INSERT INTO websites VALUES (4, 'http://www.netflix.com', "Netflix");

INSERT INTO accounts (account_id, user_id, website_id, username, password_hash,comment)
    VALUES (1, 1, 1, 'jobro123', AES_ENCRYPT('moneymachine!', 'CS365'), 'Amazon Account');
INSERT INTO accounts (account_id, user_id, website_id, username, password_hash,comment)
    VALUES (2, 1, 2, 'katluverjoe', AES_ENCRYPT('bigscarytiger!', 'CS365'), 'Joe\'s Cat Blog');
INSERT INTO accounts (account_id, user_id, website_id, username, password_hash,comment)
    VALUES (3, 1, 4, 'jostar1997', AES_ENCRYPT('moviechill!', 'CS365'), 'Family Netflix Account');
INSERT INTO accounts (account_id, user_id, website_id, username, password_hash,comment)
    VALUES (4, 2, 1, 'danofsteel', AES_ENCRYPT('sasha_10112002', 'CS365'), 'Danny Personal Amazon Acct');
INSERT INTO accounts (account_id, user_id, website_id, username, password_hash,comment)
VALUES (5, 2, 1, 'DanielSteele', AES_ENCRYPT('workinman1969', 'CS365'), 'Dan\'s Business Amazon Acct');
INSERT INTO accounts (account_id, user_id, website_id, username, password_hash,comment)
    VALUES (6, 2, 3, 'DSTeele', AES_ENCRYPT('supersafepassword', 'CS365'), 'Banking Information');
INSERT INTO accounts (account_id, user_id, website_id, username, password_hash,comment)
    VALUES (7, 3, 1, 'MrMachoMan', AES_ENCRYPT('peopleselbow', 'CS365'), 'Amazon Account');
INSERT INTO accounts (account_id, user_id, website_id, username, password_hash,comment)
    VALUES (8, 3, 2, 'SavageLion', AES_ENCRYPT('slimjim321', 'CS365'), 'Macho Man Cat Blog');
INSERT INTO accounts (account_id, user_id, website_id, username, password_hash,comment)
    VALUES (9, 3, 3, 'RSavage84', AES_ENCRYPT('petunia2007', 'CS365'), 'Randy\'s Bank Account');
INSERT INTO accounts (account_id, user_id, website_id, username, password_hash,comment)
    VALUES (10, 3, 4, 'RSavage', AES_ENCRYPT('machomovies', 'CS365'), 'Netflix Account');


\! echo 'DONE!';
