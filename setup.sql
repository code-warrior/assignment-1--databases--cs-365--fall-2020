CREATE SCHEMA IF NOT EXISTS `credential_manager` DEFAULT CHARACTER SET utf8;
USE `credential_manager`;
SOURCE gen_tables.sql;
SOURCE init_table_vals.sql
