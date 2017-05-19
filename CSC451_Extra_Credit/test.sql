/* 
	test.sql
	Eric J. Schwabe
	CSC 451 Fall 2016
	Preparations for Assignment 5
*/

// Get rid of any existing table

DROP TABLE INFO;

// Create a new table with two columns

CREATE TABLE INFO
(
	Name	VARCHAR2(20),
	Grade	Number(3,0)
);

// Add a record to the table

INSERT INTO INFO VALUES ('Eric Schwabe', 110);

// Display the contents of the table

SELECT * FROM INFO;

