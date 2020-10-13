INSERT INTO users (user_id, f_name, l_name) VALUES
	(1, 'Robert', 'Venezia'),
	(2, 'Ed', 'Bob'),
	(3, 'Sally', 'Jacobson');

INSERT INTO accounts
	(user_id, acct_id, email_addr, username, site_name, site_url, password, comment, last_updated)
	VALUES
	(1, 1, 'robert@gmail.com', 'venrob', 'Google', 'https://www.google.com/',
		AES_ENCRYPT('1234', @key_str, @init_vector), NULL, 'April 4th, 2020'),
	(1, 2, 'robert@gmail.com', 'venrob', 'Amazon', 'https://www.amazon.com/',
		AES_ENCRYPT('4321', @key_str, @init_vector), 'Subscription - $6.49/mo', 'October 4th, 2020'),
	(2, 1, 'edbob@gmail.com', 'eddy1234', 'Google', 'https://www.google.com/',
		AES_ENCRYPT('1234567', @key_str, @init_vector), NULL, 'January 2nd, 2018'),
	(2, 2, 'edward_bob@gmail.com', 'eddy5678', 'Google', 'https://www.google.com/',
		AES_ENCRYPT('9876543', @key_str, @init_vector), NULL, 'February 29th, 2016'),
	(2, 3, 'edbob@gmail.com', 'eddy_dude567', 'Steam', 'https://store.steampowered.com/',
		AES_ENCRYPT('87586568', @key_str, @init_vector), NULL, 'June 3rd, 2013'),
	(2, 4, 'edward_bob@gmail.com', 'edbob_2020', 'Github', 'https://github.com/',
		AES_ENCRYPT('54375', @key_str, @init_vector), 'For UHart classes', 'January 25th, 2020'),
	(3, 1, 'sally@yahoo.com', 'sally', 'Yahoo', 'https://www.yahoo.com/',
		AES_ENCRYPT('sally5', @key_str, @init_vector), NULL, 'September 2nd, 2005'),
	(3, 2, 'sally@yahoo.com', 'sally1234', 'Amazon', 'https://www.amazon.com/',
		AES_ENCRYPT('sally567', @key_str, @init_vector), NULL, 'July 3rd, 2010'),
	(3, 3, 'sally@yahoo.com', 'sally1234', 'Google', 'https://www.google.com/',
		AES_ENCRYPT('sally567', @key_str, @init_vector), NULL, 'July 3rd, 2010'),
	(3, 4, 'sally@yahoo.com', 'sally1234', 'EBay', 'https://www.ebay.com/',
		AES_ENCRYPT('sally56789', @key_str, @init_vector), NULL, 'July 27th, 2011');
