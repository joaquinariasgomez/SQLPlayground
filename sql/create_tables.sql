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

-- Creation of customers table
CREATE TABLE IF NOT EXISTS CUSTOMERS (
   ID INT NOT NULL,
   NAME VARCHAR (20) NOT NULL,
   AGE INT NOT NULL,
   ADDRESS CHAR (25),
   SALARY DECIMAL (18, 2),       
   PRIMARY KEY (ID)
);

-- Creation of orders table
CREATE TABLE IF NOT EXISTS ORDERS (
   OID INT NOT NULL,
   DATE VARCHAR (20) NOT NULL,
   CUSTOMER_ID INT NOT NULL,
   AMOUNT DECIMAL (18, 2)
);