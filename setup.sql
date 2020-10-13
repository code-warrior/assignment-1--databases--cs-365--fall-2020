DROP DATABASE IF EXISTS passwords;

CREATE DATABASE passwords;

USE passwords;

CREATE TABLE account (
    account_id  SMALLINT(3) NOT NULL,
    website_name VARCHAR(128) NOT NULL,
    website_url VARCHAR(128) NOT NULL,
    comment     VARCHAR(512) NOT NULL,
    username    VARCHAR(128) NOT NULL,
    email       VARCHAR(128) NOT NULL,
    f_name      VARCHAR(64) NOT NULL,
    l_name      VARCHAR(64) NOT NULL,
    password_encrypt VARBINARY(128) NOT NULL,
    password_time VARCHAR(10) NOT NULL,
    PRIMARY KEY (account_id)
);

INSERT INTO account VALUES (0, "Facebook", "https://www.facebook.com/", "Facebook comment", "TimFacebook", "TimEmail123@email.com", "Timothy", "Kodz", AES_ENCRYPT('TestPass0', UNHEX(SHA2('Password Encoder', 512))), "01/02/2003");
INSERT INTO account VALUES (1, "Instagram", "https://www.instagram.com/", "Instagram comment", "TimInstagram", "TimEmail123@email.com", "Timothy", "Kodz", AES_ENCRYPT('TestPass1', UNHEX(SHA2('Password Encoder', 512))), "04/05/2006");
INSERT INTO account VALUES (2, "Twitter", "https://twitter.com/", "Twitter comment", "TimTwitter", "TimEmail123@email.com", "Timothy", "Kodz", AES_ENCRYPT('TestPass2', UNHEX(SHA2('Password Encoder', 512))), "07/08/2009");
INSERT INTO account VALUES (3, "Tumblr", "https://www.tumblr.com/", "Tumblr comment", "TimTumblr", "TimEmail123@email.com", "Timothy", "Kodz", AES_ENCRYPT('TestPass3', UNHEX(SHA2('Password Encoder', 512))), "10/11/2012");
INSERT INTO account VALUES (4, "LinkedIn", "https://www.linkedin.com/", "LinkedIn comment", "TimLinkedIn", "TimEmail123@email.com", "Timothy", "Kodz", AES_ENCRYPT('TestPass4', UNHEX(SHA2('Password Encoder', 512))), "30/12/2019");
INSERT INTO account VALUES (5, "WikiDot", "http://www.wikidot.com/", "WikiDot comment", "TimWikiDot", "TimEmail123@email.com", "Timothy", "Kodz", AES_ENCRYPT('TestPass5', UNHEX(SHA2('Password Encoder', 512))), "25/06/2016");
INSERT INTO account VALUES (6, "Reddit", "https://www.reddit.com/", "Reddit comment", "TimReddit", "TimEmail123@email.com", "Timothy", "Kodz", AES_ENCRYPT('TestPass6', UNHEX(SHA2('Password Encoder', 512))), "19/08/2006");
INSERT INTO account VALUES (7, "Mix", "https://mix.com/", "Mix comment", "TimMix", "TimEmail123@email.com", "Timothy", "Kodz", AES_ENCRYPT('TestPass7', UNHEX(SHA2('Password Encoder', 512))), "12/10/2015");
INSERT INTO account VALUES (8, "MyShopify", "http://myshopify.com/", "MyShopify comment", "TimMyShopify", "TimEmail123@email.com", "Timothy", "Kodz", AES_ENCRYPT('TestPass8', UNHEX(SHA2('Password Encoder', 512))), "03/06/2009");
INSERT INTO account VALUES (9, "UofWashington", "http://www.washington.edu/", "UofWashington comment", "TimUofWashington", "TimEmail123@email.com", "Timothy", "Kodz", AES_ENCRYPT('TestPass9', UNHEX(SHA2('Password Encoder', 512))), "23/07/2018");
