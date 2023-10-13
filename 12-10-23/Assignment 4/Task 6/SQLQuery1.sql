USE [5085_DB]
--TASK 6 PART 1 (TOTAL NUMBER OF STUDENTS)
SELECT COUNT(Students.StudentID)
FROM Students;

--TASK 6 PART 2 (AVG OF AGE)

SELECT AVG(Students.Age) AS Average_of_Ages
FROM Students;
SELECT SUM(Students.Age) AS Sum_of_Ages
FROM Students;