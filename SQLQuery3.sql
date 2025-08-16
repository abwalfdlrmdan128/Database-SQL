USE UniversityDB;
ALTER TABLE Students  
ADD  PhoneNumber VARCHAR(255) NOT NULL;
/* i can't use RENAME beacuse f sql don't support this but mysql support it*/
EXEC sp_rename 'Students.Age', 'StudentAge', 'COLUMN';
ALTER TABLE Courses  
ALTER COLUMN CourseName VARCHAR(8000);
/*it dosn't work beacause the Credits have a constraint alt of*/
ALTER TABLE Courses  
DROP COLUMN Credits;
/*to add cons in the students table*/
ALTER TABLE Students  
ADD CONSTRAINT CHK_StudentAge CHECK (StudentAge >= 18);

/*
this task i can't do it i will ask you (DR) in the next sction !!!
Add a DEFAULT constraint to set the EnrollmentDate in Enrollments to the current date if no value is provided
*/

/*Add a UNIQUE constraint on PhoneNumber in the Students table to prevent duplicate phone numbers.*/
ALTER TABLE Students  
ADD CONSTRAINT UQ_PhoneNumber UNIQUE (PhoneNumber);


DROP TABLE Enrollments;
/*to delete this you should delete the constraint first !!! */
ALTER TABLE Students  
DROP COLUMN PhoneNumber;
/*droped constraint==>>!!!*/
ALTER TABLE Students  
DROP CONSTRAINT UQ_PhoneNumber;


/*
this is doesn't work beacause i delete the table first 
Drop the foreign key constraint between Enrollments and Students.
*/
ALTER TABLE Enrollments  
DROP CONSTRAINT FK_Enrollments_Students;



/*Insert at least 5 students into the Students table.*/
INSERT INTO Students (StudentID, Name, StudentAge, PhoneNumber)  
VALUES  
(1, 'Ali Hassan', 20, '01012345678'),  
(2, 'Sara Ahmed', 22, '01098765432'),  
(3, 'Omar Khaled', 19, '01122334455'),  
(4, 'Nada Mostafa', 21, '01234567890'),  
(5, 'Youssef Ibrahim', 23, '01155667788');

/*Insert at least 3 courses into the Courses table.*/
INSERT INTO Courses (CourseID, CourseName, Credits)  
VALUES  
(1, 'Database Systems', 3),  
(2, 'Computer Networks', 4),  
(3, 'Artificial Intelligence', 3);


/*Use TRUNCATE to remove all records from the Students table while keeping the structure.*/
TRUNCATE TABLE Students;

/*Verify that the table is empty but still exists.*/
SELECT * FROM Students;

/*Insert at least 5 students into the Students table.-?? (1,’Ali’,21, ‘CS’)*/
INSERT INTO Students (StudentID, StudentName, StudentAge, Major)  
VALUES  
(1, 'Ali', 21, 'CS'),  
(2, 'Sara', 22, 'IT'),  
(3, 'Omar', 20, 'SE'),  
(4, 'Nada', 23, 'DS'),  
(5, 'Youssef', 19, 'AI');

/*Insert at least 3 courses into the Courses table.*/
INSERT INTO Courses (CourseID, CourseName, Credits)  
VALUES  
(1, 'Database Systems', 3),  
(2, 'Computer Networks', 4),  
(3, 'Artificial Intelligence', 3);


/*UPDATE Students  
SET Major = 'Software Engineering'  
WHERE StudentName = 'Ali';*/
UPDATE Students  
SET Major = 'Software Engineering'  
WHERE StudentName = 'Ali';



/*Increase the age of all students by 1 year.*/
UPDATE Students  
SET StudentAge = StudentAge + 1;


/*Delete the student "Omar" from the Students table.*/
DELETE FROM Students  
WHERE StudentName = 'Omar';



/*Delete all students who are younger than 21 years old.*/
DELETE FROM Students  
WHERE StudentAge < 21;

/*we need to drop constraint first*/
DROP TABLE Courses


/*Use TRUNCATE to remove all records from the Students table while keeping the structure.*/
TRUNCATE TABLE Students;


/*Verify that the table is empty but still exists.*/
SELECT * FROM Students;

