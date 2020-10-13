@@ -0,0 +1,58 @@
/*commands
Michaela Manzi
CS 365: Principles of Database Systems*/

/*Creating new entries*/
INSERT INTO user (user_id, user_first_name, user_last_name)
      VALUES (6, "John", "Rose");

INSERT INTO website (website_id, website_name, website_url)
      VALUES (8, "YouTube", "https://www.youtube.com/");

INSERT INTO account (user_id, website_id, account_id, email, username, password, time_stamp, comment)
      VALUES (6, 8, 1,
        "johnnyrose@rosevideo.com",
        "RoseVideo",
        AES_ENCRYPT('#1SinAtraF@n', UNHEX(SHA2('My secret passphrase', 512))),
        CURRENT_TIMESTAMP,
        "Rose Video YouTube"
       );

/*Update*/
UPDATE user SET user_first_name = "Johnny" WHERE user_first_name = "John";

/*Get Password associated with URL*/
SELECT CAST(AES_DECRYPT(password,
        UNHEX(SHA2('My secret passphrase', 512))) AS CHAR), user_id
        FROM account WHERE website_id = 8 AND user_id = 6;

/*All Password Related Data*/
SELECT CAST(AES_DECRYPT(password, UNHEX(SHA2('My secret passphrase', 512))) AS CHAR),
      user_id, account_id, time_stamp FROM account WHERE website_id = 1;

/*Change URL*/
UPDATE website SET
      website_url = "https://www.mit.edu/"
      WHERE website_url = "http://www.mit.edu/";

/*Change a password*/
UPDATE account SET
      password = AES_ENCRYPT('#1SinAtraF@n7', UNHEX(SHA2('My secret passphrase', 512)))
      WHERE user_id = 6 AND website_id = 8;
UPDATE account set
        time_stamp = CURRENT_TIMESTAMP
        WHERE user_id = 6 AND website_id = 8;

/*Delete url*/
DELETE FROM website WHERE website_url = "https://www.mit.edu/";
DELETE FROM account WHERE website_id = 7;

/*delete password/ account
  When a password is deleted, you would not look it up
      by password, it would be searched for by user, then website,
      then which account, which is why those three ids
      are parameters below*/
DELETE FROM account where
  user_id = 6 AND
  website_id = 8 AND
  account_id = 1;
