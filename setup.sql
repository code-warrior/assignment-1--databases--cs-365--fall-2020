DROP DATABASE IF EXISTS passwords;
CREATE DATABASE passwords DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE passwords;
CREATE USER IF NOT EXISTS 'venrob'@'localhost' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON passwords.* TO 'venrob'@'localhost';
SOURCE create_tables.sql;
