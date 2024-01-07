CREATE DATABASE cm_devices;
USE cm_devices;

CREATE TABLE customers (username CHAR(9), fullName VARCHAR(100), email VARCHAR(255)); 

SHOW tables;

SHOW columns from customers;

-- Additional task

CREATE TABLE feedback(feedbackID CHAR(8), feedbackType VARCHAR(100), comment TEXT(500));

SHOW tables;
SHOW columns from feedback;