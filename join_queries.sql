-- Using the schema created for Task 1 of the CODTECH Internship
USE task1_joins;

-- Creating the 'Students' table to store student details and their enrolled course IDs
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(100),
    CourseID INT
);

-- Creating the 'Courses' table to store all available courses
CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100)
);

-- Inserting sample student data
-- Some students are enrolled in a course (via CourseID), one student (Chirag) is not enrolled
INSERT INTO Students VALUES
(1, 'Aarav', 101),
(2, 'Bhavya', 102),
(3, 'Chirag', NULL),   -- No course assigned
(4, 'Diya', 103),
(5, 'Eshan', 104);     -- This course ID does not exist in Courses table

-- Inserting sample courses
-- One course (105 - History) has no student enrolled
INSERT INTO Courses VALUES
(101, 'Mathematics'),
(102, 'Science'),
(105, 'History');      -- No student is taking this course

-- =======================
-- 🔄 INNER JOIN
-- =======================
-- This will return only the students who are enrolled in a course that exists in the Courses table.
-- Students with NULL CourseID or unmatched CourseIDs will be excluded.
SELECT s.Name AS StudentName, c.CourseName
FROM Students s
INNER JOIN Courses c ON s.CourseID = c.CourseID;

-- =======================
-- 🔄 LEFT JOIN
-- =======================
-- This will return all students, even if they are not enrolled in a course.
-- If there's no matching CourseID, CourseName will show as NULL.
-- Good for finding students not assigned to any valid course.
SELECT s.Name AS StudentName, c.CourseName
FROM Students s
LEFT JOIN Courses c ON s.CourseID = c.CourseID;

-- =======================
-- 🔄 RIGHT JOIN
-- =======================
-- This will return all courses, even if no student is enrolled in them.
-- If no student is found for a course, StudentName will show as NULL.
-- Useful to identify courses with no enrollment.
SELECT s.Name AS StudentName, c.CourseName
FROM Students s
RIGHT JOIN Courses c ON s.CourseID = c.CourseID;

-- =======================
-- 🔄 FULL OUTER JOIN (via UNION)
-- =======================
-- MySQL does not support FULL OUTER JOIN directly, so we simulate it using UNION of LEFT and RIGHT joins.
-- This will return:
-- - Students with or without a course
-- - Courses with or without students
-- Ensures that nothing is missed on either side.
SELECT s.Name AS StudentName, c.CourseName
FROM Students s
LEFT JOIN Courses c ON s.CourseID = c.CourseID

UNION

SELECT s.Name AS StudentName, c.CourseName
FROM Students s
RIGHT JOIN Courses c ON s.CourseID = c.CourseID;
