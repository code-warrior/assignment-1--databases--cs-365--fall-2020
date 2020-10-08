/* Create 1 new account */
INSERT INTO accounts
	(user_id, acct_id, email_addr, username, site_name, site_url, password, last_updated)
	VALUES
	(1, 3, 'robert@gmail.com', 'venrob', 'Steam', 'https://store.steampowered.com/',
		AES_ENCRYPT('12345678987654321', @key_str, @init_vector), 'October 8th, 2020');

/* Select username, password, and site-identifiers from user 1's Amazon account */
SELECT username, CAST(AES_DECRYPT(`password`, @key_str, @init_vector) AS CHAR) AS 'password (decrypted)', site_name, site_url
	FROM accounts WHERE user_id = 1 AND site_name = 'Amazon';

/* Select username, password, and site-identifiers for ALL https sites */
SELECT username, CAST(AES_DECRYPT(`password`, @key_str, @init_vector) AS CHAR) AS 'password (decrypted)', site_name, site_url
	FROM accounts WHERE site_url LIKE 'https%';

/* Update amazon link to point to smile.amazon.com (which gives a portion of spendings to charity) */
UPDATE accounts
	SET site_url = 'https://smile.amazon.com/'
	WHERE site_name LIKE 'Amazon';

/* Update User 1's Amazon password */
UPDATE accounts
	SET password = AES_ENCRYPT('foobar', @key_str, @init_vector)
	WHERE user_id = 1 AND site_name LIKE 'Amazon';

/* Remove the URL for Steam from all entries */
UPDATE accounts
	SET site_url = NULL
	WHERE site_name LIKE 'Steam';

/* Delete User 2's Github account entry */
DELETE FROM accounts
	WHERE user_id = 2 AND site_name LIKE 'Github';
