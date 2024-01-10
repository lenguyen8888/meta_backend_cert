DROP DATABASE SportsClub;

-- Question 1
CREATE DATABASE SportsClub;

USE SportsClub;

-- Question 2
CREATE TABLE Players (playerID INT, playerName VARCHAR(50), age INT, PRIMARY KEY(playerID));

-- Question 3
INSERT INTO Players (playerID, playerName, age) VALUES (1, "Jack", 25);

-- Question 4
INSERT INTO Players (playerID, playerName, age) 
    VALUES
    (2, "Karl", 20),
    (3, "Mark", 21),
    (4, "Andrew", 22)
    ;

SELECT playerName FROM Players WHERE playerID = 2;

-- Question 5
SELECT playerName FROM Players;

-- Question 6
SELECT * FROM Players;

UPDATE Players SET age = 22 WHERE playerID = 3;
SELECT * FROM Players;

-- Question 7
-- Delete the row with playerID = 4
DELETE FROM Players WHERE playerID = 4;
SELECT * FROM Players;

-- Question 8
-- Write an SQL statement that evaluates if the PlayerID in the following "Players" table is odd or even.
SELECT playerID % 2 FROM Players;

-- Question 9
SELECT playerID, playerName FROM Players WHERE age > 25;

-- Question 10
CREATE TABLE Department(
    DepartmentID INT NOT NULL,
    DepartmentName VARCHAR(50),
    PRIMARY KEY (DepartmentID)
);

CREATE TABLE Course( 
 courseID int NOT NULL, courseName VARCHAR(50), PRIMARY KEY (courseID), 
   DepartmentID INT,
   FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);
