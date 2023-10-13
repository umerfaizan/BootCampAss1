USE [5085_DB]
CREATE TABLE Students(				
StudentID INT PRIMARY KEY ,	
FirstName VARCHAR(50),				
LastName VARCHAR(50),				
Age INT,						
CourseID INT,						
);
GO

CREATE TABLE Courses(				
CourseID INT PRIMARY KEY,			
CourseName VARCHAR(50)				
);
Go

ALTER TABLE Students
ADD CONSTRAINT FK_CourseID
FOREIGN KEY (CourseID) REFERENCES Courses(CourseID);
GO