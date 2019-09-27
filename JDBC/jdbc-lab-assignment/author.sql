CREATE DATABASE IF NOT EXISTS testdb;

USE testdb;

CREATE TABLE IF NOT EXISTS Author
(author_Id BIGINT(10) AUTO_INCREMENT, first_Name VARCHAR(10) NOT NULL,
middle_Name VARCHAR(10), last_Name VARCHAR(10) NOT NULL,
phone_number BIGINT(10),
CONSTRAINT pk_author PRIMARY KEY(author_Id));

CREATE TABLE IF NOT EXISTS Book
(ISBN BIGINT(10) AUTO_INCREMENT PRIMARY KEY ,
title VARCHAR(50) NOT NULL,
price DECIMAL);

CREATE TABLE IF NOT EXISTS Library
(ISBN BIGINT(10) REFERENCES Book(ISBN),
author_id BIGINT(10) REFERENCES Author(author_id));