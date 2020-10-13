INSERT INTO websites VALUES (1, "https://github.com/", "GitHub");
INSERT INTO websites VALUES (2, "https://blackboard.hartford.edu/", "UHart Blackboard");
INSERT INTO websites VALUES (3, "https://www.hackthebox.eu/", "HTB");
INSERT INTO websites VALUES (4, "http://keitheagleson.dev", "Personal Website - keitheagleson.dev");
INSERT INTO websites VALUES (5, "https://youtube.com/", "YouTube");
INSERT INTO websites VALUES (6, "https://ebay.com/", "eBay");
INSERT INTO websites VALUES (7, "http://reddit.com/", "Reddit");
INSERT INTO websites VALUES (8, "https://facebook.com/", "Facebook");
INSERT INTO websites VALUES (9, "https://twitter.com/", "Twitter");
INSERT INTO websites VALUES (10, "https://www.nytimes.com/", "New York Times");

SET block_encryption_mode = 'aes-256-cbc';
SET @key_str = SHA2('secretpass', 512);
SET @init_vector = RANDOM_BYTES(16);

INSERT INTO users VALUES (1, 1, "keith-E", "Keith", "Eagleson", "keagleson28@gmail.com", AES_ENCRYPT("123456", @key_str, @init_vector), "Main GitHub account.");
INSERT INTO users VALUES (2, 1, "keagleson", "Keith", "Eagleson", "keagleson@hartford.edu", AES_ENCRYPT("12345678", @key_str, @init_vector), "UHart BlackBoard account.");
INSERT INTO users VALUES (3, 1, "h4x0r", "Keith", "Eagleson", "obscureemail@gmail.com", AES_ENCRYPT("4!2#qwerTo$2", @key_str, @init_vector), "Practice PenTesting.");
INSERT INTO users VALUES (4, 1, "admin", "Keith", "Eagleson", "keagleson28@gmail.com", AES_ENCRYPT("1234566", @key_str, @init_vector), "Admin account for personal/portfolio website.");
INSERT INTO users VALUES (5, 1, "EagleTV", "Keith", "Eagleson", "eagletv@gmail.com", AES_ENCRYPT("1234567", @key_str, @init_vector), "YouTube channel.");
INSERT INTO users VALUES (6, 1, "keithBuysStuff", "Keith", "Eagleson", "keagleson28@gmail.com", AES_ENCRYPT("asdf123", @key_str, @init_vector), "eBay - Buy things I don't need.");
INSERT INTO users VALUES (7, 1, "SuperCoolUsername", "Anon", "Ymous", "fakeemail@hotmail.com", AES_ENCRYPT("123456asdf", @key_str, @init_vector), "Look at cat pictures.");
INSERT INTO users VALUES (8, 1, "keagleson28@gmail.com", "Keith", "Eagleson", "keagleson28@gmail.com", AES_ENCRYPT("1a3b4c5d6", @key_str, @init_vector), "Delete Facebook.");
INSERT INTO users VALUES (9, 1, "itskeithyy", "Keith", "Eagleson", "keagleson28@gmail.com", AES_ENCRYPT("twitt123", @key_str, @init_vector), "Twitter account.");
INSERT INTO users VALUES (10, 1, "keagleson28@gmail.com", "Keith", "Eagleson", "keagleson28@gmail.com", AES_ENCRYPT("1234", @key_str, @init_vector), "NYTimes sub.");