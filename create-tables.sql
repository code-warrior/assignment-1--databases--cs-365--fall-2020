CREATE TABLE websites (
    website_id TINYINT(12) NOT NULL,
    website_url VARCHAR(2083),
    website_name VARCHAR(255),
    PRIMARY KEY (website_id)
);
CREATE TABLE users (
    website_id TINYINT(12) NOT NULL,
    user_id TINYINT(5) NOT NULL,
    user_username VARCHAR(255) NOT NULL,
    user_first_name VARCHAR(255) NOT NULL,
    user_last_name VARCHAR(255) NOT NULL,
    user_email VARCHAR(255) NOT NULL,
    user_password VARBINARY(255),
    user_comment VARCHAR(255) DEFAULT NULL,
    PRIMARY KEY (website_id, user_id)
);