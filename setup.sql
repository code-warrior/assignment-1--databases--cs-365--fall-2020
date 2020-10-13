@@ -0,0 +1,148 @@
/*MICHAELA MANZI
ECE365: Database Systems
Assignment 1
Due Tuesday, October 13, 2020*/
DROP DATABASE IF EXISTS passwords;

CREATE DATABASE passwords;

USE passwords;

/*TABLE USER
each user will have their own id and can enter their legal first and last name
Primary key will be the user_id
*/
CREATE TABLE user(
    user_id SMALLINT(5) NOT NULL,
    user_first_name VARCHAR(50) NOT NULL,
    user_last_name VARCHAR(50) NOT NULL,
    PRIMARY KEY (user_id)
);

/*TABLE WEBSTIE
website has 3 attributes
Primary key is website_id
*/
CREATE TABLE website(
    website_id SMALLINT(5) NOT NULL,
    website_name VARCHAR(100) NOT NULL,
    website_url VARCHAR(200) NOT NULL,
    PRIMARY KEY (website_id)
);

/*TABLE ACCOUNT
accounts at each website
*/
CREATE TABLE account(
    user_id SMALLINT(5) NOT NULL,
    website_id SMALLINT(5) NOT NULL,
    account_id SMALLINT(5) NOT NULL,
    email VARCHAR(100) NOT NULL,
    username VARCHAR(50) NOT NULL,
    password VARBINARY(100) NOT NULL,
    time_stamp VARCHAR(100) NOT NULL,
    comment VARCHAR(1000) NOT NULL,
    PRIMARY KEY (user_id, website_id, account_id)
);


/*
Inserting Users
    *cast from Schitts Creek*
*/
INSERT INTO user VALUES(1, "David", "Rose");
INSERT INTO user VALUES(2, "Stevie", "Budd");
INSERT INTO user VALUES(3, "Alexis", "Rose");
INSERT INTO user VALUES(4, "Ted", "Mullens");
INSERT INTO user VALUES(5, "Roland", "Schitt");

/*
adding websites into website table
*/
INSERT INTO website VALUES(1, "Instagram", "https://www.instagram.com/");
INSERT INTO website VALUES(2, "Google Drive", "https://drive.google.com/drive/");
INSERT INTO website VALUES(3, "Facebook", "https://www.netflix.com/");
INSERT INTO website VALUES(4, "Outlook", "https://outlook.live.com/");
INSERT INTO website VALUES(5, "Netflix", "https://www.netflix.com/");
INSERT INTO website VALUES(6, "Amazon", "https://www.amazon.com/");
INSERT INTO website VALUES(7, "MIT", "http://www.mit.edu/");

/*adding Accounts
password encryption adapted from dev.mysql.com*/
/* David Rose Accounts */
INSERT INTO account VALUES(1, 1, 1,
                          "drose@google.com",
                          "davidrose",
                          AES_ENCRYPT('df!hur88', UNHEX(SHA2('My secret passphrase', 512))),
                          CURRENT_TIMESTAMP,
                          "David Rose's Personal Instagram Account");
INSERT INTO account VALUES(1, 1, 2,
                          "social@roseapothecary.com",
                          "roseapothecary",
                          AES_ENCRYPT('0uR5h0P!', UNHEX(SHA2('My secret passphrase', 512))),
                          CURRENT_TIMESTAMP,
                          "Rose Apothicary Business Intagram Account");
INSERT INTO account VALUES(1, 3, 1,
                          "drose@google.com",
                          "David Rose",
                          AES_ENCRYPT('i<3swe@ter5', UNHEX(SHA2('My secret passphrase', 512))),
                          CURRENT_TIMESTAMP,
                          "David's personal facebook account");

/*Stevie Budd Accounts*/
INSERT INTO account VALUES(2, 2, 1,
                          "stevie@google.com",
                          "stevie",
                          AES_ENCRYPT('w@ti5apassword', UNHEX(SHA2('My secret passphrase', 512))),
                          CURRENT_TIMESTAMP,
                          "Stevie's Google account");
INSERT INTO account VALUES(2, 6, 1,
                          "stevie@google.com",
                          "steviebudd",
                          AES_ENCRYPT('m0te!Lyf', UNHEX(SHA2('My secret passphrase', 512))),
                          CURRENT_TIMESTAMP,
                          "Stevie's amazon account");

/*Alexis Rose Accounts*/
INSERT INTO account VALUES(3, 1, 1,
                          "arose@google.com",
                          "thealexisrose",
                          AES_ENCRYPT('w0rldT@ve1er', UNHEX(SHA2('My secret passphrase', 512))),
                          CURRENT_TIMESTAMP,
                          "Alexis Rose Instagram Account");
INSERT INTO account VALUES(3, 5, 1,
                          "arose@google.com",
                          "arose@google.com",
                          AES_ENCRYPT('w@itin4myd0c', UNHEX(SHA2('My secret passphrase', 512))),
                          CURRENT_TIMESTAMP,
                          "Alexis' Netflix account");

/*Ted Mullens Accounts*/
INSERT INTO account VALUES(4, 4, 1,
                          "tedmull@outlook.com",
                          "tedmull",
                          AES_ENCRYPT('@nima1L0ver33', UNHEX(SHA2('My secret passphrase', 512))),
                          CURRENT_TIMESTAMP,
                          "Teds outlook account");
INSERT INTO account VALUES(4, 7, 1,
                          "mullens@mit.edu",
                          "mullens",
                          AES_ENCRYPT('$ch00lisgr8!', UNHEX(SHA2('My secret passphrase', 512))),
                          CURRENT_TIMESTAMP,
                          "Ted's MIT login");

/*Roland Schitt Accounts*/
/*I know that password is not a good password,
but if you watch the show, you will understand why*/
INSERT INTO account VALUES(5, 3, 1,
                          "schitt@hotmail.com",
                          "Roland Schitt",
                          AES_ENCRYPT('password', UNHEX(SHA2('My secret passphrase', 512))),
                          CURRENT_TIMESTAMP,
                          "Roland's facebook");
INSERT INTO account VALUES(5, 5, 1,
                          "schitt@hotmail.com",
                          "schitt",
                          AES_ENCRYPT('password', UNHEX(SHA2('My secret passphrase', 512))),
                          CURRENT_TIMESTAMP,
                          "Roland's Netflix");
