/* Katherine Fauci
  Assignment 1
  Passoword Database

  Using the assumptiont that a single person using the database as a password
  management systemcan have more than one account with a single website
*/

/* Deletes the database if it already exists */
DROP DATABASE IF EXISTS passwords;

/* Creates a database named Passwords */
CREATE DATABASE passwords;

/* Brings focus the the new database */
USE passwords;

/* table containing the individual people using the database */
CREATE TABLE users(
  user_id SMALLINT(5) NOT NULL,
  first_name VARCHAR(25) NOT NULL,
  last_name VARCHAR(25) NOT NULL,
  PRIMARY KEY (user_id)
);

/* Table containing all the websites that have passwords saved*/
CREATE TABLE websites(
  site_id SMALLINT(5) NOT NULL,
  site_name VARCHAR(128) NOT NULL,
  site_url VARCHAR(128) NOT NULL,
  PRIMARY KEY (site_id)
);

/* Table of every user account information the owner of the database has */
CREATE TABLE accounts(
    user_id SMALLINT(5) NOT NULL,
    site_id SMALLINT(5) NOT NULL,
    account_id SMALLINT(5) NOT NULL,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    time_stamp VARCHAR(25) NOT NULL,
    password VARBINARY(128) NOT NULL, /* needs to be VARBINARY due to AES_ENCRYPT */
    comment VARCHAR(128) NOT NULL,
    PRIMARY KEY (user_id, site_id, account_id)
);

/* AES ENCRYPTION METHOD
AES_ENCRYPT('text', UNHEX(SHA2('My secret passphrase',512)))
*/
/* Insert three unique users into the database */
INSERT INTO users VALUES(1, "Bruce", "Wayne");
INSERT INTO users VALUES(2, "Clark", "Kent");
INSERT INTO users VALUES(3, "Jim",   "Gordon");

/* Insert 10 websites into the database*/
INSERT INTO websites VALUES(1,"Amazon","https://www.amazon.com/");                              /* 1 */
INSERT INTO websites VALUES(2,"Facebook","http://www.facebook.com/");                          /* 1 */
INSERT INTO websites VALUES(3,"OneDrive","https://onedrive.live.com/about/en-us/signin/");      /* 2 */
INSERT INTO websites VALUES(4,"Google Drive","https://drive.google.com/");                      /* 2 */
INSERT INTO websites VALUES(5,"Discord","https://discord.com/login");                           /* 1 */
INSERT INTO websites VALUES(6,"Indeed","https://www.indeed.com/");                              /* 1 */
INSERT INTO websites VALUES(7,"LinkedIn","https://www.linkedin.com/feed/");                     /* 1 */
INSERT INTO websites VALUES(8,"Zoom","http://zoom.us/signin");                                 /* 3 */
INSERT INTO websites VALUES(9,"Twitter","https://twitter.com/");                                /* 1 */
INSERT INTO websites VALUES(10,"Redbubble","http://www.redbubble.com/");                       /* 1 */

/*
    Insert at least 10 accounts into the database
    I am including more than 10 in order to have each website have
    at least one account accociated with it and to show how a website
    can have more than one account accociated with it
*/

INSERT INTO accounts VALUES(1,3,1, "BruceWayneWork",
  "bwayne@wayneenterprises.com",
  CURRENT_TIMESTAMP,
  AES_ENCRYPT("SEcuRE416","DCrulz1639"),
  "Bruce Waynes work OneDrive account"
);

INSERT INTO accounts VALUES(1,3,2,"BruceWaynePersonal",
  "batman@gmail.com",
  CURRENT_TIMESTAMP,
  AES_ENCRYPT("ImBatmans748","DCrulz1639"),
  "Bruce Waynes Personal OneDrive account_id"
);

INSERT INTO accounts VALUES(2,1,3, "kentAmazon",
  "superman@outlook.com",
  CURRENT_TIMESTAMP,
  AES_ENCRYPT("SuperMan1267","DCrulz1639"),
  "Clark Kents amazon account"
);

INSERT INTO accounts VALUES(3,7,4, "JamesGordon",
  "gordon@aol.com",
  CURRENT_TIMESTAMP,
  AES_ENCRYPT("g00d1254@5","DCrulz1639"),
  "Jim Gordons LinkedIn"
);

INSERT INTO accounts VALUES(2,4,5, "ClarkKent",
  "ckent@thedailyplanet.com",
  CURRENT_TIMESTAMP,
  AES_ENCRYPT("P4asswor6145","DCrulz1639"),
  "Clark Kents work Google Drive account"
);

INSERT INTO accounts VALUES(1,5,5, "TheDarkKnight",
  "batman@gmail.com",
  CURRENT_TIMESTAMP,
  AES_ENCRYPT("bman458gotham47","DCrulz1639"),
  "Bruce Waynes Discord Account"
);

INSERT INTO accounts VALUES(2,4,7, "SuperClark39",
  "SuperClark39@gmail.com",
  CURRENT_TIMESTAMP,
  AES_ENCRYPT("1mSup3rM4n1739","DCrulz1639"),
  "Clark Kents personal Google Drive account"
);

INSERT INTO accounts VALUES(1,6,8, "BruceWayne",
  "batman@gmail.com",
  CURRENT_TIMESTAMP,
  AES_ENCRYPT("rand7584pass","DCrulz1639"),
  "Bruce Waynes Indeed.com account"
);

INSERT INTO accounts VALUES(3,2,9, "JimGordon",
  "gordon@aol.com",
  CURRENT_TIMESTAMP,
  AES_ENCRYPT("goth4mC1ty786","DCrulz1639"),
  "Jim Gordons Facebook account"
);

INSERT INTO accounts VALUES(2,8,10, "ClarkKent",
  "ckent@thedailyplanet.com",
  CURRENT_TIMESTAMP,
  AES_ENCRYPT("Sup3r1939metr0","DCrulz1639"),
  "Clark Kents work zoom acccount"
);

INSERT INTO accounts VALUES(2,9,11, "ImNotSuperman",
  "SuperClark39@gmail.com",
  CURRENT_TIMESTAMP,
  AES_ENCRYPT("metr0H34o45723","DCrulz1639"),
  "Clark Kents Twitter account"
);

INSERT INTO accounts VALUES(1,10,12, "batmanFan39",
  "batman@gmail.com",
  CURRENT_TIMESTAMP,
  AES_ENCRYPT("2364num734rand","DCrulz1639"),
  "Bruce Waynes Redbubble account"
);

INSERT INTO accounts VALUES(1,8,13, "BruceWayne",
  "bwayne@wayneenterprises.com",
  CURRENT_TIMESTAMP,
  AES_ENCRYPT("batpass45","DCrulz1639"),
  "Bruce Waynes work zoom account"
);

INSERT INTO accounts VALUES(1,8,14, "BruceW",
  "brucewayne@gmail.com",
  CURRENT_TIMESTAMP,
  AES_ENCRYPT("1mrunn1ng","DCrulz1639"),
  "Bruce Waynes personal Zoom account"
);

INSERT INTO accounts VALUES(2,1,15, "clarkkent",
  "superClark39@gmail.com",
  CURRENT_TIMESTAMP,
  AES_ENCRYPT("0ut0f16e4s","DCrulz1639"),
  "Clark Kents amazon account"
);

/* SET UP PROCEDURES */
/*
Add an account to the database
  The user inputs all the data into the procedure that relates to the account Entry
    the procedure check if the user and website already exist and adjusts
    how that data is added to the database accordingly.
*/
DELIMITER //
CREATE PROCEDURE AddEntry(IN FIRST VARCHAR(25),
                          IN LAST VARCHAR(25),
                          IN SITENAME VARCHAR(128),
                          IN SITEURL VARCHAR(128),
                          IN USENAME VARCHAR(50),
                          IN EMAIL VARCHAR(50),
                          IN PASSWORD VARCHAR(59),
                          IN COMMENT VARCHAR(128))
BEGIN /* START PROCUDURE */
IF EXISTS(SELECT * FROM users WHERE first_name = FIRST AND last_name = LAST) = 1
  THEN /*User already exists, so use that id */
    SELECT @userID := user_id FROM users WHERE first_name = @FIRST AND last_name = @LAST;
  ELSE /* the user does not exist */
    SELECT @userID := MAX(user_id)+1 FROM users;    /* set user id to the next available one */
    INSERT INTO users VALUES (@userID, FIRST, LAST); /* add the user */
END IF;
/* check if the website already exists */
IF EXISTS(SELECT * FROM websites WHERE site_name = SITENAME) = 1
  THEN
    SELECT @siteID := site_id FROM websites WHERE site_name = SITENAME;
    SET @siteExists = 1;
  ELSE
    SELECT @siteID := MAX(site_id)+1 FROM websites;
    INSERT INTO websites VALUES (@siteID, SITENAME, SITEURL);
END IF;
/* check if account exists (assuming same username can not be used for the same site) */
IF @siteExists = 1 AND EXISTS(SELECT * FROM accounts WHERE username = USENAME) = 1
  THEN
    SELECT @accID := account_id FROM accounts WHERE username = USENAME;
    SELECT "This account is already in the database";
  ELSE
  SELECT @accID := MAX(account_id)+1 FROM accounts; /* get new account id */
  /* Add account */
  INSERT INTO accounts VALUES (@userID, @siteID, @accID, USENAME, EMAIL, CURRENT_TIMESTAMP, AES_ENCRYPT(PASSWORD,"key"), COMMENT);
END IF;
END // /* END PROCEDURE */
DELIMITER ;


/*
get passwords accociated with a website URLs
  takes the site URL and the key to decryp the password as an input
*/
DELIMITER //
CREATE PROCEDURE GetSitePasswords(IN SITEURL VARCHAR(128),
                                  IN DECRYPT_KEY VARCHAR(128))
BEGIN
  SELECT @siteID := site_id FROM websites WHERE site_url = SITEURL;
  SELECT CONCAT(first_name," ",last_name) AS User,
         username,
         CONCAT(CAST(AES_DECRYPT(password,DECRYPT_KEY) AS CHAR)) AS password
    FROM accounts
    INNER JOIN users USING (user_id)
    WHERE site_id = @siteID;
END // /* END PROCEDURE */
DELIMITER ;


/*
  get all the password related data, including the passwords associated with URLs that have https
    Takes the ley to decrypt the password as an input
*/
DELIMITER //
CREATE PROCEDURE GetHTTPSPasswords(IN DECRYPT_KEY VARCHAR(128))
BEGIN
  SELECT site_name,
         CONCAT(first_name," ",last_name) AS User,
         username,
         CONCAT(CAST(AES_DECRYPT(password,DECRYPT_KEY) AS CHAR)) AS password,
         email,
         time_stamp,
         comment
    FROM accounts
    INNER JOIN websites
    USING (site_id)
    INNER JOIN users
    USING (user_id)
    WHERE site_url LIKE "https%";
END // /* END PROCEDURE */
DELIMITER ;


/*
  Procedures for modifying the URL
*/
/* 1. change the URL for all passwords acciciated with it */
DELIMITER //
CREATE PROCEDURE UpdateSiteURL(IN SITENAME VARCHAR(50),
                              IN NEWURL VARCHAR(128))
BEGIN
UPDATE websites SET site_url = NEWURL WHERE site_name = SITENAME;
END // /* END PROCEDURE */
DELIMITER ;

/*
   2. Change the URL of a specific account
        will either switch it to another existing URLs
        OR create a new website entry to asociate with
*/
DELIMITER //
CREATE PROCEDURE UpdateAccountURL(IN USENAME VARCHAR(50),
                                  IN NEWSITE VARCHAR(128),
                                  IN NEWURL VARCHAR(128))
BEGIN
  /* if the new URL already exists in the data base */
  IF EXISTS(SELECT * FROM websites WHERE site_name = NEWSITE) = 1
    THEN /* switch the siteID of the account to the existing one */
      SELECT @siteID := site_id FROM websites WHERE site_name = NEWSITE;
      UPDATE accounts SET site_id = @siteID WHERE username = USENAME;
    ELSE /* make a new website entry with the new URL and set the account to it */
      SELECT @siteID := MAX(site_id)+1 FROM websites;
      INSERT INTO websites VALUES(@siteID,NEWSITE,NEWURL);
      UPDATE accounts SET site_id = @siteID WHERE username = USENAME;
  END IF;
END // /* END PROCEDURE */
DELIMITER ;

/*
  Change any password
    Based on the site name and the username input by the user
*/
DELIMITER //
CREATE PROCEDURE ChangePassword(IN SITENAME VARCHAR(128),
                                IN USENAME VARCHAR(50),
                                IN NEWPASS VARCHAR(128))
BEGIN
  SELECT @siteID := site_id FROM websites WHERE site_name = SITENAME;
  SELECT @accID := account_id FROM accounts WHERE username = USENAME;
  UPDATE accounts
    SET password = AES_ENCRYPT(NEWPASS, "DCrulz1639")
    WHERE site_id = @siteID AND account_id = @accID;
END // /* END PROCEDURE */
DELIMITER ;
/*
  Remove a URL and all accounts accoiciated with it
    Takes the sitename as an input from the user
*/
DELIMITER //
CREATE PROCEDURE DeleteURL(IN SITENAME VARCHAR(50))
BEGIN
/* get the site id based on the sitename */
SELECT @siteID := site_id FROM websites WHERE site_name = SITENAME;
/* remove all accounts accociated with the URL */
DELETE FROM accounts WHERE site_id = @siteID;
/* Remove the URL Entry */
DELETE FROM websites WHERE site_id = @siteID;
END // /* END PROCEDURE */
DELIMITER ;


/*
  Remove a account/password from the systemcan
    if it is the inlu entry unser that website, also removes the website entry
*/
DELIMITER //
CREATE PROCEDURE DeleteAccount(IN SITENAME VARCHAR(128), IN USENAME VARCHAR(50))
BEGIN
/* get the site id based on the username */
SELECT @siteID := site_id FROM websites WHERE site_name = SITENAME;
/* Delete the account */
DELETE FROM accounts WHERE username = USENAME AND site_id = @siteID;
/* if it is the inlu account under that site */
IF (SELECT COUNT(*) FROM accounts WHERE site_id = @siteID) = 0
  THEN /* Delete the site entry */
    DELETE FROM websites WHERE site_id = @siteID;
END IF;
END // /* END PROCEDURE */
DELIMITER ;
