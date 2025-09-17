CREATE DATABASE ce_66543206063DB;

USE ce_66543206063DB;

CREATE TABLE Students (
    id INT IDENTITY(1,1) PRIMARY KEY,
    firstName NVARCHAR(50) NOT NULL,
    lastName NVARCHAR(50) NOT NULL,
    email NVARCHAR(100) UNIQUE,
    age INT,
    major NVARCHAR(100),
    createdAt DATETIME2 DEFAULT GETDATE()
);

INSERT INTO Students (firstName, lastName, email, age, major)
VALUES ('สมชาย', 'ใจดี', 'somchai@email.com', 20, 'Computer Science');

INSERT INTO Students (firstName, lastName, email, age, major)
VALUES ('สมหญิง', 'รักเรียน', 'somying@email.com', 19, 'Software Engineering');

SELECT * FROM Students;                    -- ทั้งหมด
SELECT * FROM Students WHERE age > 19;     -- ตามเงื่อนไข
SELECT firstName, lastName FROM Students;  -- เฉพาะ column

-- 5. UPDATE - แก้ไขข้อมูล
UPDATE Students 
SET age = 21, major = 'Data Science'
WHERE id = 1;

-- 6. DELETE - ลบข้อมูล
DELETE FROM Students WHERE id = 2;

-- 7. การ Query ขั้นสูง
SELECT major, COUNT(*) as studentCount 
FROM Students 
GROUP BY major;

SELECT * FROM Students 
ORDER BY age DESC;
