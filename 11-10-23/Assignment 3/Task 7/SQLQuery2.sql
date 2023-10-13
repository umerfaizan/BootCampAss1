USE [5085_DB]
--TASK 7 PART 1

INSERT INTO Students
VALUES
(10,'humayoun','asghar',27,NULL),
(11,'palwasha','qaiser',28,NULL),
(12,'qayoom','jutt',29,NULL);

SELECT Students.FirstName , Students.LastName FROM Students
WHERE Students.CourseID IS NULL;


--TASK 7 PART 2

UPDATE Students
SET CourseID=101
WHERE CourseID IS NULL;

SELECT TOP 1 Students.CourseID, COUNT(Students.CourseID) AS REPEAT_TIME
FROM Students
GROUP BY Students.CourseID
ORDER BY REPEAT_TIME DESC;

--TASK 7 PART 3
SELECT Students.FirstName,Students.LastName,Students.Age FROM Students
WHERE Students.Age>( SELECT AVG(Students.Age) FROM Students);

--TASK 7 PART 4


SELECT Courses.CourseID ,Courses.CourseName , COUNT(Students.FirstName) AS TOTAL_NO_OF_STUDENTS ,AVG(Students.Age) AS AVG_AGE_STUDENTS
FROM Courses
FULL JOIN Students
ON Courses.CourseID=Students.CourseID
GROUP By Courses.CourseID, Courses.CourseName;

-- TASK 7 PART 5


SELECT Courses.CourseName
FROM Courses
LEFT JOIN Students
ON Courses.CourseID=Students.CourseID
WHERE Students.CourseID IS NULL;

-- TASK 7 PART 6
-- I am checking CourseID of Student Name Tahseen and checking all other students sharing courses with him

SELECT Students.StudentID,Students.FirstName,Students.LastName,Students.Age
FROM Students
WHERE Students.CourseID=(
SELECT Students.CourseID
FROM Students
WHERE Students.FirstName='Tahseen'
)
AND Students.FirstName <> 'Tahseen';



-- TASK 7 PART 7

SELECT Courses.CourseName,
(SELECT TOP 1 Students.FirstName 
FROM Students 
WHERE Students.CourseID=Courses.CourseID 
ORDER BY Students.Age ASC) AS YOUNGEST_ONE,
(SELECT TOP 1 Students.FirstName 
FROM Students 
WHERE Students.CourseID=Courses.CourseID 
ORDER BY Students.Age DESC) AS ELDEST_ONE
FROM Courses;






