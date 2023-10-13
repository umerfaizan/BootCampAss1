USE [5085_DB]

--Task 5 Starts from here
--as i wrote every Ones age greater then 20, i will now update thier ages (some to below 20) then will list greater then 20 people

Update Students
SET Age =19
WHERE StudentID in (7,5,8);

--Now Listing People with age > 20
SELECT * FROM Students WHERE Age>20;
SELECT * FROM Students WHERE Age<20;

--TASK 5 PART 2

SELECT Students.StudentID,Students.FirstName,Students.LastName, Courses.CourseName 
FROM Students 
JOIN Courses
ON Students.CourseID =Courses.CourseID
WHERE Students.CourseID=100;