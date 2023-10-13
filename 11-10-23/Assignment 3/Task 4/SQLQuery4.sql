USE [5085_DB]
SELECT * FROM Courses;				
SELECT * FROM Students;				

--Task 4 Starts here
--updating Age of student Umer faizan with studentID 1

Update Students
SET Age=25
WHERE StudentID=1;

--Deleting Student info of Student with ID 10
DELETE FROM Students
WHERE StudentID=10;