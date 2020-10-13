/* Create a new entry into the database, which already has your 10 initial entries */
INSERT INTO account_info (
    user_id,
    account_id,
    site_name,
    site_url,
    email,
    username,
    password,
    comment,
    timestamp) VALUES (
        1,
        4,
        'Online Bank',
        'https://onlinebank.com',
        'jgold@gmail.com',
        'jgold',
        AES_ENCRYPT('randomPass15', @key_str, @init_vector),
        'Online Bank account',
        CURRENT_TIMESTAMP );

/* Get the password associated with the URL of one of your 10 entries */
SELECT email, site_name, site_url, username, password
    FROM account_info
    WHERE user_id = 3 AND site_id = 3;

/* Get all the password-related data, including the password, associated with URLs that have https in one of your 10 entries */
SELECT * FROM account_info
    WHERE site_url LIKE "https%";

/* Change a URL associated with one of the passwords in your 10 entries */
UPDATE account_info
    SET site_name = 'Ebay',
        site_url = 'https://ebay.com'
    WHERE site_id = 6 AND site_name LIKE 'GitHub';

/* Change any password */
UPDATE account_info
	SET password = AES_ENCRYPT('newRandomPassword1', @key_str, @init_vector)
	WHERE user_id = 3 AND site_name LIKE 'Google';

/* Remove a URL */
UPDATE account_info
	SET site_url = NULL
	WHERE site_name LIKE 'Facebook';

/* Remove a password */
UPDATE account_info
	SET password = NULL
	WHERE site_name LIKE 'Blackboard';