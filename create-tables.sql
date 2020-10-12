CREATE TABLE website (
    website_id TINYINT(12) NOT NULL,
    website_url VARCHAR(2083) NOT NULL,
    website_name VARCHAR(255) NOT NULL,
    PRIMARY KEY (website_id)
);
CREATE TABLE user (
    website_id TINYINT(12) NOT NULL,
    user_id TINYINT(5) NOT NULL,
    username VARCHAR(255) NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    `password` VARBINARY(255) NOT NULL,
    comment VARCHAR(255) DEFAULT NULL,
    PRIMARY KEY (website_id, user_id),
    UNIQUE KEY username_and_email (username, email)
);