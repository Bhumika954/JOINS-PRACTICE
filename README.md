# JOINS-PRACTICE

*COMPANY*: CODTECH IT SOLUTIONS

*NAME*: BHUMIKA S

*INTERN ID*: CT04DF1481

*DOMAIN*: SQL

*DURATION*: 4 WEEKS

*MENTOR*: NEELA SANTOSH

##This task was all about practicing different types of SQL JOINs using real, meaningful data. It's a core skill for anyone working with relational databases — whether you're analyzing data, building apps, or just trying to make sense of how tables connect.

The goal here was to write INNER JOIN, LEFT JOIN, RIGHT JOIN, and FULL OUTER JOIN queries and understand what each one does. It's super useful in real life — like joining users with their orders, students with their courses, or products with their suppliers.

Tools I Used:

MySQL Workbench – to write and run all the SQL queries
MySQL Server – where the database actually lives
GitHub – to keep everything organized and share the files

Tables I Created:
Students Table
Stores basic student info and the course each one is taking (if any).

StudentID (Primary Key)
Name
CourseID

Courses Table
Stores available course information.

CourseID (Primary Key)
CourseName

INNER JOIN
Only shows students who are matched with an existing course. Super clean data.

LEFT JOIN
Shows all students, even if they’re not taking any course. Good for spotting gaps.

RIGHT JOIN
Shows all courses, even if no students enrolled. Handy for finding unused courses.

FULL OUTER JOIN (Using UNION)
Shows everyone and everything — even if they don’t match. It gives the full picture.

Files Included:

join queries.sql – My JOIN queries with comments explaining what each one does
joins outputs.txt – The results I got when I ran the queries
README.md – This file you’re reading now :)

Where This is Useful in Real Life:

Finding customers who didn’t place an order yet
Checking for employees without assigned departments
Listing all products, even ones no one has bought
Seeing users who haven’t completed their profiles
Basically, any time two things are linked by an ID, JOINs help make sense of it.

What I Got From This Task:

A clearer understanding of how JOINs work (especially LEFT and FULL JOIN)
Learned how to set up test data that actually makes sense
Practiced exporting results and organizing code cleanly
Felt more confident reading and writing JOIN queries on my own
