DROP DATABASE chinook;

CREATE DATABASE chinook;
USE chinook;

CREATE TABLE Employee(
    EmployeeID INT NOT NULL,
    LastName VARCHAR(20),
    FirstName VARCHAR(20),
    Title     VARCHAR(30),

    ReportTo  INT,
    BirthDate DATE,
    HireDate  DATE,
    Address   VARCHAR(70),
    CONSTRAINT PK_Employee PRIMARY KEY (EmployeeID)
);

CREATE TABLE Customer(
    CustomerId INT NOT NULL,
    LastName   VARCHAR(20),
    FirstName  VARCHAR(20),
    Company    VARCHAR(30),
    Phone       VARCHAR(20),
    Email       VARCHAR(100),
    SupportRepId INT,
    CONSTRAINT PK_Customer PRIMARY KEY (CustomerId),
    CONSTRAINT FK_Customer_SupportRep FOREIGN KEY (SupportRepId) REFERENCES Employee(EmployeeID),
    Address    VARCHAR(70)
);


CREATE TABLE Artist(
    ArtistId INT NOT NULL,
    Name VARCHAR(120),
    CONSTRAINT PK_Artist PRIMARY KEY (ArtistId)
);


CREATE TABLE Album(
    AlbumId INT NOT NULL,
    Title VARCHAR(160),
    ArtistId INT,
    CONSTRAINT PK_Album PRIMARY KEY (AlbumId),
    CONSTRAINT FK_Album_Artist FOREIGN KEY (ArtistId) REFERENCES Artist(ArtistId)
);


CREATE TABLE Track(
    TrackId INT NOT NULL,
    Name VARCHAR(200),
    AlbumId INT,
    UnitPrice DECIMAL(10,2),
    CONSTRAINT PK_Track PRIMARY KEY (TrackId),
    CONSTRAINT FK_Track_Album FOREIGN KEY (AlbumId) REFERENCES Album(AlbumId)
);


CREATE TABLE Invoice(
    InvoiceId INT NOT NULL,
    CustomerId INT,
    InvoiceDate DATE,
    BillingAddress VARCHAR(100),
    TrackId INT,
    CONSTRAINT PK_Invoice PRIMARY KEY (InvoiceId),
    CONSTRAINT FK_Track FOREIGN KEY (TrackId) REFERENCES Track(TrackId)
);

SHOW TABLES;

SHOW columns from Album;

SHOW columns from Artist;

SHOW columns from Customer;

SHOW columns from Employee;

SHOW columns from Invoice;

SHOW columns from Track;

