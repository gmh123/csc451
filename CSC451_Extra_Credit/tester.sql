-- remove any existing table

DROP TABLE TEST;



-- Create the table

CREATE TABLE TEST 
(

	FirstName		VARCHAR(20),
	LastName		VARCHAR(20),
	ExamDate        DATE,    
	Score           NUMBER(3)
	                DEFAULT 0
					CHECK (0 <= Score AND Score <= 100),
					
					
					
					CONSTRAINT PK_TEST 
						PRIMARY KEY (FirstName, LastName)


);

-- populate the table 

INSERT INTO TEST VALUES ('Eric', 'Schwabe', DATE '2015-05-11', 90);

INSERT INTO TEST VALUES ('David', 'Miller', DATE '2016-01-02', 100);

INSERT INTO TEST (FirstName, LastName, ExamDate)
						 VALUES('Eric', 'Miller', DATE '2016-12-15');

INSERT INTO TEST(FirstName, LastName) VALUES ('Madonna', 'Ciccone');

-- display table contents

SELECT * FROM TEST;