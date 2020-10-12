CREATE TABLE website (
    website_id SMALLINT(500) NOT NULL,
    website_url VARCHAR(2083) NOT NULL,
    website_name VARCHAR(255) NOT NULL,
    PRIMARY KEY (website_id)
);
CREATE TABLE user (
    website_id SMALLINT(500) NOT NULL,
    user_id SMALLINT(1000) NOT NULL,
    username VARCHAR(255) NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    PRIMARY KEY (website_id, user_id)
);