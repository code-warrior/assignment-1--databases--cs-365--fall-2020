DROP TABLE IF EXISTS users;
CREATE TABLE users (
	user_id      SMALLINT(5)     NOT NULL,
	f_name       VARCHAR(32)     NOT NULL,
	l_name       VARCHAR(32)     NOT NULL,
	PRIMARY KEY (user_id)
);

DROP TABLE IF EXISTS accounts;
CREATE TABLE accounts (
	user_id      SMALLINT(5)     NOT NULL,
	acct_id      SMALLINT(5)     NOT NULL,
	email_addr   VARCHAR(128)    NOT NULL,
	username     VARCHAR(128)    NOT NULL,
	site_name    VARCHAR(128)    NOT NULL,
	site_url     VARCHAR(512)            ,
	password     VARBINARY(512)  NOT NULL,
	comment      VARCHAR(512)            ,
	last_updated VARCHAR(64)     NOT NULL,
	PRIMARY KEY (user_id, acct_id)
);
