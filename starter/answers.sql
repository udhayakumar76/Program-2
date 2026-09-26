
CREATE TABLE Student
(
    StudentID NUMBER(5) PRIMARY KEY,
    StudentName VARCHAR(20) NOT NULL,
    DOB DATE NOT NULL,
    Gender VARCHAR(10) NOT NULL,
    DepartmentID NUMBER(5),
    CONSTRAINT UQ_StudentName UNIQUE (StudentName),
    CONSTRAINT FK_Department
        FOREIGN KEY (DepartmentID)
        REFERENCES Department(DepartmentID)
);
