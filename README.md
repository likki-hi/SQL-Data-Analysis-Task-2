# SQL-Data-Analysis-Task-2
SQL Data Analysis Internship Task 2 – Student Management Database using PostgreSQL

## Maincrafts Technologies

This project was completed as part of the **SQL Data Analysis Internship – Task 2** at Maincrafts Technologies.

The project extends a Student Management Database by adding Courses and Enrollments tables and performing SQL-based data analysis.

## Project Objective

The main objective of this task is to practice:

- SQL JOINs
- GROUP BY
- Aggregate functions
- Data analysis using SQL
- Table relationships
- Finding useful insights from data

## Database Structure

The project contains three tables:

### 1. Students

| Column | Description |
|---|---|
| id | Unique student ID |
| name | Student name |
| age | Student age |
| email | Student email |

### 2. Courses

| Column | Description |
|---|---|
| id | Unique course ID |
| name | Course name |

Courses included:

- Python
- SQL
- Data Analytics
- Power BI

### 3. Enrollments

| Column | Description |
|---|---|
| student_id | ID of the student |
| course_id | ID of the course |
| grade | Student grade |

## SQL Analysis Performed

### Query 1 – Students Enrolled in Each Course

Used SQL JOINs to display:

- Course name
- Student name
- Grade

### Query 2 – Average Grade Per Course

Calculated the average grade for each course using:

- `AVG()`
- `GROUP BY`
- `ROUND()`

### Query 3 – Top 3 Students Overall

Calculated each student's average grade and used:

- `AVG()`
- `GROUP BY`
- `ORDER BY`
- `LIMIT`

to identify the top 3 students.

### Query 4 – Failed Students

Counted students with a grade below 40 using:

- `WHERE`
- `COUNT()`
- `DISTINCT`

## Tools Used

- PostgreSQL
- pgAdmin 4
- SQL

## SQL Concepts Used

- CREATE TABLE
- INSERT INTO
- SELECT
- JOIN
- GROUP BY
- ORDER BY
- WHERE
- AVG()
- COUNT()
- ROUND()
- LIMIT
- DISTINCT

## Project Files

```text
Maincrafts_SQL_Data_Analysis_Task_2/
│
├── SQL_Data_Analysis_Task_2.sql
└── README.md

#How to Run
Install PostgreSQL and pgAdmin.
Open pgAdmin Query Tool.
Create or select a database.
Open SQL_Data_Analysis_Task_2.sql.
Execute the SQL statements.
Run the analysis queries to view the results.

Internship Organization: Maincrafts Technologies
Domain: Data Analytics
Task: SQL Data Analysis – Task 2

Author
Likitha Kalal
