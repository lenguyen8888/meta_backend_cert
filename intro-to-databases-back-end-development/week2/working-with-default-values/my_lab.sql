CREATE DATABASE cm_devices;
USE cm_devices;

CREATE TABLE address(id int not null,
        street varchar(255),
        postcode varchar(10),
        town varchar(30) default "Harrow");

SHOW columns FROM address;

-- Additional task
DROP TABLE address;

CREATE TABLE address (id int NOT NULL,
        street VARCHAR(255),
        postcode VARCHAR(10) DEFAULT "HA97DE",
        town VARCHAR(30) DEFAULT "Harrow"); 

SHOW columns from address;
