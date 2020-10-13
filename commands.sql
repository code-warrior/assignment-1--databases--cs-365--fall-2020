/* Create a new entry into the database */
INSERT into account VALUES(3, 2, 1,"TheHermioneGranger",AES_ENCRYPT("allBusiness","rowling"),"hermione_granger@gmail.com",CURRENT_TIMESTAMP(),"");

/* Get the password associated with the URL of one of your 10 entries */
SELECT CAST(AES_DECRYPT(password, "rowling") AS CHAR) FROM account INNER JOIN site ON account.site_id = site.site_id WHERE (url = "https://www.facebook.com/");

/* Get all the password-related data, including the password, associated with URLs that have `https` in one of your 10 entries */
SELECT firstname, lastname, username, CAST(AES_DECRYPT(password, "rowling") AS CHAR), email, url FROM account INNER JOIN site on account.site_id = site.site_id INNER JOIN user on user.user_id = account.user_id WHERE url LIKE "https%";

/* Change a URL associated with one of the passwords in your 10 entries */
UPDATE site SET url = "https://stories.audible.com/start-listen" WHERE website = "Audible";

/* Change any password */
UPDATE account SET password = AES_ENCRYPT("magicalWorld","rowling") WHERE user_id = 1 AND site_id = 3 AND account_id = 1;

/* Remove a URL */
DELETE FROM site WHERE website = "Google";

/* Remove a Password */
DELETE FROM account WHERE site_id = 2 AND user_id = 1;