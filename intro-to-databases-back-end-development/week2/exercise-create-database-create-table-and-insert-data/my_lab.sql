CREATE DATABASE bookshop;
USE bookshop;

CREATE TABLE customers (customerID int, customerName varchar(50), customerAddress varchar(255));

SHOW tables;

-- insert data
INSERT INTO customers (customerID, customerName, customerAddress)
    VALUES (1, "Jack", "115 Old street Belfast");

SELECT * FROM customers;

-- Additional task

INSERT INTO customers(customerID, customerName, customerAddress)
    VALUES (2, "James", "24 Carlson Rd London") ;

SELECT * FROM customers;

