-- clear database
-- drop database cm_devices;

-- Task 1

-- step 1
create database cm_devices;

-- step 3
use cm_devices;

-- Task 2

-- step 3.5
CREATE TABLE devices (deviceID int, deviceName varchar(50), price decimal);

-- step 3.6
show tables;

-- step 3.7
show columns from devices;

-- Additional task
CREATE TABLE stock (deviceID int, quantity int, totalPrice decimal);

-- check columns 
show columns from stock;