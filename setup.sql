/*If the database already exists, then it will be removed*/
DROP DATABASE IF EXISTS passwords;
/*This creates a new database called passwords*/
CREATE DATABASE passwords DEFAULT CHARACTER SET utf8 COLLATE utf8mb4;
/*This has the user enter the database and work within it.*/
USE passwords;
/*This creates a user called 'the-user' and the password is 'the-password'.*/
CREATE USER 'the-user'@'localhost' IDENTIFIED BY 'the-password';
/*This gives the users created on the database all the necessary privileges.*/
GRANT ALL PRIVILEGES ON passwords.* to 'the-user'@'localhost';
/*This is for logging into mysql.*/
/*mysql -u the-user -p;*/
/*This forces the user to switch into the passwords database.*/
USE passwords;
/*This displays all the databases that have been created.*/
SHOW DATABASES;
/*This creates a table, called user, which will contain all of the user's information.*/
CREATE TABLE user (
	first_name VARCHAR(45) NOT NULL,
	last_name VARCHAR(45) NOT NULL,
	email VARCHAR(45) NOT NULL,
	username VARCHAR(45) NOT NULL,
    username_id int(3) NOT NULL UNIQUE,
    PRIMARY KEY (username_id)
);
/*This creates a table, called password, which will contain all of the password information from the user.*/
CREATE TABLE password(
	passwordforwebsite VARBINARY(255),
	websitename VARCHAR(255) NOT NULL,
	URL VARCHAR(255) NOT NULL,
	commentonwebsite VARCHAR(255) NOT NULL,
    passwordcreated VARCHAR(255) NOT NULL,
	username_id int(3) NOT NULL UNIQUE,
    password_id int(3) NOT NULL,
   PRIMARY KEY (username_id, password_id)
);
/*This is a table related to the user information for the initial 10 entries in the database, including the first and last name, username, and username id.*/
INSERT INTO user(first_name, last_name, email, username, username_id)
VALUES
("Isaiah","Johnson","Isaiahj3@gmail.com","Ij123", "1"),
("Isaiah","Johnson","Isaiahj3@gmail.com","Isaiahj58", "2"),
("Isaiah","Johnson","Isaiahj3@gmail.com","Johnson3", "3"),
("Isaiah","Johnson","Isaiahj3@gmail.com","IsJohn345", "4"),
("Isaiah","Johnson","Isaiahj3@gmail.com","IJohnson", "5"),
("Isaiah","Johnson","Isaiahj3@gmail.com","IsaiahJohnson", "6"),
("Isaiah","Johnson","Isaiahj3@gmail.com","IJ345", "7"),
("Isaiah","Johnson","Isaiahj3@gmail.com","IsaiahJohnson245", "8"),
("Isaiah","Johnson","Isaiahj3@gmail.com","JohnsonIsaiah5", "9"),
("Isaiah","Johnson","Isaiahj3@gmail.com","IJohnson1234", "10");

/*This is a table related to the password information for the initial 10 entries in the database, 
which includes the password, the website name, the URL, a comment, a timestamp for creation of password, username_id, and a password.*/
INSERT INTO password(passwordforwebsite, websitename, URL, commentonwebsite, passwordcreated, username_id, password_id)
VALUES
(AES_ENCRYPT('Ijohnson345', UNHEX(SHA2('pass',256))),"Google","https://www.google.com","Google","Feb2020", "1","1"),
(AES_ENCRYPT("J0hnson1", UNHEX(SHA2('pass',256))),"Instagram","http://www.instagram.com","Instagram","Jan2018","2","1"),
(AES_ENCRYPT("I$a1ah45", UNHEX(SHA2('pass',256))),"Twitter","https://www.twitter.com","Twitter","Jun2016","3","1"),
(AES_ENCRYPT("2020IJohn", UNHEX(SHA2('pass',256))),"Facebook","http://www.facebook.com","Facebook","Jul2012","4","1"),
(AES_ENCRYPT("19793674", UNHEX(SHA2('pass',256))),"University of Hartford","https://www.hartford.edu","University of Hartford","Sep2016","5","1"),
(AES_ENCRYPT("John$onzo0m", UNHEX(SHA2('pass',256))),"Zoom","http://www.zoom.us","Zoom","Mar2020","6","1"),
(AES_ENCRYPT("Isaiah$g1thub", UNHEX(SHA2('pass',256))),"Github","https://www.github.com","Github","Jan2019","7","1"),
(AES_ENCRYPT("Icode357", UNHEX(SHA2('pass',256))),"MySQL","https://mysql.com","MySQL","Sep2014","8","1"),
(AES_ENCRYPT("Ch@tisa1ah", UNHEX(SHA2('pass',256))),"Discord","http://www.discord.com","Discord","Oct2017","9","1"),
(AES_ENCRYPT("J0hn$ons3arch", UNHEX(SHA2('pass',256))),"wikipedia","http://www.wikipedia.org","Wikipedia","Nov2016","10","1");
