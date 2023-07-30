-- Creation of product table
CREATE TABLE IF NOT EXISTS Students (
  StudentID INT NOT NULL,
  StudentName varchar(250) NOT NULL,
  PRIMARY KEY (StudentID)
);

-- Creation of city table
CREATE TABLE IF NOT EXISTS StudentCourses (
  CourseID INT NOT NULL,
  StudentID INT NOT NULL,
  PRIMARY KEY (CourseID),
  CONSTRAINT fk_student
    FOREIGN KEY(StudentID) 
      REFERENCES Students(StudentID)
);