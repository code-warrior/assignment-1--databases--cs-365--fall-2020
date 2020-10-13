DROP Table IF EXISTS website;

CREATE TABLE website (
  website_id SMALLINT(5) NOT NULL,
  website_name VARCHAR(128) NOT NULL,
  url VARCHAR(255) NOT NULL,
  PRIMARY KEY(website_id)
);

DROP Table IF EXISTS account;

CREATE TABLE account (
  website_id SMALLINT(5) NOT NULL,
  account_id SMALLINT(5) NOT NULL,
  first_name VARCHAR(128) NOT NULL,
  last_name VARCHAR(128) NOT NULL,
  email VARCHAR(128) NOT NULL,
  username VARCHAR(128) NOT NULL,
  password VARBINARY(255) NOT NULL,
  comment VARCHAR(255) NOT NULL,
  time_stamp TIMESTAMP NOT NULL,
  PRIMARY KEY(website_id, account_id)
);

/* VARBINARY data type used for AES_ENCRYPT values to avoid issues with trailing
space removal or character set conversion (Recommended by the mysql manual)*/
