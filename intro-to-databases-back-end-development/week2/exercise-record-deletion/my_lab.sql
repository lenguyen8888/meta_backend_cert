-- Need to run this drop command if bookshop exists
-- drop database bookshop;
create database bookshop;
use bookshop;

create table customers(customerID INT, customerName VARCHAR(50), customerAddress VARCHAR(255));

INSERT INTO customers (customerID, customerName, customerAddress)
 VALUES (1, 'Jack', '115 Old street Belfast'),
        (2, 'James', '24 Carlson Rd London'),
        (4, 'Maria', '5 Fredrik Rd, Bedford'),
        (5, 'Jade', '10 Copland Ave Portsmouth '), 
        (6, 'Yasmine', '15 Fredrik Rd, Bedford'),
        (3, 'Jimmy', '110 Copland Ave Portsmouth');

SELECT * from customers;

DELETE from customers WHERE customerID = 3;

SELECT * from customers;

DELETE from customers WHERE customerName = 'Yasmine';

SELECT * from customers;