INSERT INTO users (first_name, last_name, user_id) VALUES
    ('Jon', 'Goldenberg', 1),
    ('Joe', 'Shmo', 2),
    ('Bob', 'Bill', 3),
    ('Bill', 'Bob', 4),
    ('Jack', 'Smack', 5),
    ('Jill', 'Kill', 6);

INSERT INTO account_info (user_id, site_id, site_name, site_url, email, username, password, comment, timestamp) VALUES
    (1, 1, 'Facebook', 'https://facebook.com' 'jgold@gmail.com', 'jgold', AES_ENCRYPT('randomPass1', @key_str, @init_vector), 'social media account', CURRENT_TIMESTAMP),
    (1, 2, 'Google', 'https://google.com' 'jgold@gmail.com', 'jgold', AES_ENCRYPT('randomPass2', @key_str, @init_vector), 'Google account', CURRENT_TIMESTAMP),
    (1, 3, 'Twitter', 'https://twitter.com' 'jgold@gmail.com', 'jgold', AES_ENCRYPT('randomPass3', @key_str, @init_vector), 'social media account', CURRENT_TIMESTAMP),
    (2, 1, 'GitHub', 'https://github.com' 'jshmo@gmail.com', 'jshmo', AES_ENCRYPT('randomPass4', @key_str, @init_vector), 'GitHub account', CURRENT_TIMESTAMP),
    (3, 1, 'Instagram', 'https://instagram.com' 'bbill@gmail.com', 'bbill', AES_ENCRYPT('randomPass5', @key_str, @init_vector), 'social media account', CURRENT_TIMESTAMP),
    (3, 2, 'Facebook', 'https://facebook.com' 'bbill@gmail.com', 'bbill', AES_ENCRYPT('randomPass6', @key_str, @init_vector), 'social media account', CURRENT_TIMESTAMP),
    (3, 3, 'GitHub', 'https://github.com' 'bbill@gmail.com', 'bbill', AES_ENCRYPT('randomPass7', @key_str, @init_vector), 'GitHub account', CURRENT_TIMESTAMP),
    (3, 4, 'Online Bank', 'onlinebank.com' 'bbill@gmail.com', 'bbill', AES_ENCRYPT('randomPass8', @key_str, @init_vector), 'Bank account', CURRENT_TIMESTAMP),
    (3, 5, 'Google', 'https://google.com' 'bbill@gmail.com', 'bbill', AES_ENCRYPT('randomPass9', @key_str, @init_vector), 'Google account', CURRENT_TIMESTAMP),
    (4, 1, 'Facebook', 'https://facebook.com' 'bbob@gmail.com', 'bbob', AES_ENCRYPT('randomPass10', @key_str, @init_vector), 'social media account', CURRENT_TIMESTAMP),
    (4, 2, 'Online Bank', 'onlinebank.com' 'bbob@gmail.com', 'bbob', AES_ENCRYPT('randomPass11', @key_str, @init_vector), 'Bank account', CURRENT_TIMESTAMP),
    (5, 1, 'Facebook', 'https://facebook.com' 'jsmack@gmail.com', 'jsmack', AES_ENCRYPT('randomPass12', @key_str, @init_vector), 'social media account', CURRENT_TIMESTAMP),
    (6, 1, 'Blackboard', 'https://blackboard.hartford.edu' 'jkill@gmail.com', 'jkill', AES_ENCRYPT('randomPass13', @key_str, @init_vector), 'Blackboard account', CURRENT_TIMESTAMP),
    (6, 2, 'GitHub', 'https://github.com' 'jkill@gmail.com', 'jkill', AES_ENCRYPT('randomPass14', @key_str, @init_vector), 'GitHub account', CURRENT_TIMESTAMP);
