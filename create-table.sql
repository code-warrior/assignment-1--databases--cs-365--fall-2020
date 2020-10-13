DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS account_info;

CREATE TABLE users (
    first_name VARCHAR(64) NOT NULL,
    last_name VARCHAR(64) NOT NULL,
    user_id INT(5) NOT NULL,
    PRIMARY KEY(first_name, last_name, user_id)
);

CREATE TABLE account_info (
    user_id INT(5) NOT NULL,
    site_id INT(5) NOT NULL,
    site_name VARCHAR(64) NOT NULL,
    site_url VARCHAR(516) NOT NULL,
    email VARCHAR(128) NOT NULL,
    username VARCHAR(64) NOT NULL,
    password VARBINARY(256) NOT NULL,
    comment VARCHAR(64) NOT NULL,
    timestamp DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(user_id, account_id)
);