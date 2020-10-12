CREATE TABLE IF NOT EXISTS  account(
   uid INT(7) NOT NULL,
   fname VARCHAR(15) NOT NULL,
   lname VARCHAR(15) NOT NULL,
   PRIMARY KEY(uid)
  )    CHARACTER SET 'utf8' COLLATE utf8_general_ci;

  CREATE TABLE IF NOT EXISTS  account_info(
     uid INT(7) NOT NULL,
     account_instance_id INT(7) NOT NULL,
     email VARCHAR(256),
     username VARCHAR(256),
     pass VARBINARY(128), #PRODUCE Binary string values after AES_ENCRYPT
     site VARCHAR(64),
     sitename VARCHAR(128) NOT NULL,
     timestamp DATETIME  DEFAULT CURRENT_TIMESTAMP(),
     comment VARCHAR(64),
     PRIMARY KEY(account_instance_id)
    )    CHARACTER SET 'utf8' COLLATE utf8_general_ci;
