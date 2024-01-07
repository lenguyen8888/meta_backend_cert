CREATE DATABASE cm_devices;
USE cm_devices;

CREATE TABLE invoice (customerName VARCHAR(50), orderDate DATE, quantity INT, price DECIMAL); 

SHOW tables;

SHOW columns from invoice;

-- Additional task
CREATE TABLE contacts(accountNumber INT, phoneNumber INT, email VARCHAR(255));

SHOW tables;

SHOW columns from contacts;