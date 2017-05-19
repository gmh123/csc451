/*
	Gregory Haynes
	CSC 451 Section 107
	Assignment 5
	November 1, 2016
	*/




-- remove any existing table
DROP TABLE ENROLLMENT; 


DROP TABLE SECTION;  

-- Create the table
CREATE TABLE SECTION
(
SectionID            VARCHAR(5),
CourseName           VARCHAR(30), 
CourseNumber         VARCHAR(7), 
SectionNumber        NUMBER(3), 
InstructorName       VARCHAR(20),
					 
					 CONSTRAINT PK_SECTION 
							PRIMARY KEY(SectionID)

					 					
);

INSERT INTO SECTION VALUES ('701', 'CSC451', 'CSC451', 444, 'Eric Schwabe');

INSERT INTO SECTION VALUES ('810', 'HCI440', 'HCI440', 210, 'Danyell Jones');

INSERT INTO SECTION VALUES ('901', 'HCI451', 'HCI451', 821, 'Adam Steele');



-- Create the table
CREATE TABLE ENROLLMENT
(

StudentID            VARCHAR(7),
FirstName            VARCHAR(30), 
LastName             VARCHAR(30), 
SectionID            VARCHAR(5), 
						
					CONSTRAINT PK_ENROLLMENT
						PRIMARY KEY (StudentID, SectionID), 
						
					CONSTRAINT FK_ENROLLMENT_SECTION 
							FOREIGN KEY (SectionID)
							REFERENCES SECTION(SectionID)
						
						
			
);

INSERT INTO ENROLLMENT VALUES ('1044108', 'Gregory', 'Haynes', '701');

--INSERT INTO SECTION VALUES ('810', 'CSC465', 'CSC465', 432, 'Eli Brown');--

INSERT INTO ENROLLMENT VALUES ('1223423', 'Eric', 'Benson', '810');

INSERT INTO ENROLLMENT VALUES ('1533422', 'Terrell', 'Tomlin', '901');


SELECT * FROM SECTION; 

SELECT * FROM ENROLLMENT;