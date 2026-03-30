📘 Online Learning Platform Database (Udemy/Coursera Style)
📌 Overview

This project designs a relational database for an online learning platform similar to Udemy or Coursera.

The system supports:

Students enrolling in courses
Instructors creating courses
Courses containing lessons
Payments for courses
Students leaving reviews
🧱 Database Design

The database is designed following 3rd Normal Form (3NF) to ensure:

No redundant data
No partial dependencies
No transitive dependencies
🧑‍💻 Entities

1. Students

Stores information about users who enroll in courses.

2. Instructors

Stores instructors who create and manage courses.

3. Courses

Each course is created by one instructor.

4. Lessons

Each course contains multiple lessons.

5. Enrollments

A junction table to represent the many-to-many relationship between Students and Courses.

6. Payments

Tracks payments made by students for courses.

7. Reviews

Stores student feedback and ratings for courses.

🔗 Relationships
Relationship Type Description
Instructor → Course 1 : M One instructor can create many courses
Course → Lesson 1 : M One course has many lessons
Student ↔ Course M : M Managed using Enrollments table
Student → Payment 1 : M A student can make many payments
Student → Review 1 : M A student can write multiple reviews
Course → Review 1 : M A course can have many reviews
🔑 Keys
Primary Keys (PK):
student_id, instructor_id, course_id, etc.
Foreign Keys (FK):
Courses.instructor_id → Instructors.instructor_id
Lessons.course_id → Courses.course_id
Enrollments.student_id → Students.student_id
Enrollments.course_id → Courses.course_id
Composite Key:
Enrollments(student_id, course_id)
🧠 Normalization (3NF)

The database follows Third Normal Form:

1NF
All attributes are atomic (no repeating groups)
2NF
All attributes depend on the full primary key
Achieved by separating the Enrollments table
3NF
No transitive dependencies
Example: Instructor data is stored separately, not inside Courses
🧾 SQL Schema

The full schema is implemented in:

📄 [Database Schema](./schema/create_tables.sql)

This file includes:

Table creation
Primary keys
Foreign keys
Relationships
🔍 SQL Joins

The file:

📄 [SQL Joins](./queries/joins.sql)

Includes examples such as:

Joining Students with Courses via Enrollments
Retrieving courses with instructor names
Getting reviews with student names

Example:

SELECT c.title, i.name
FROM Courses c
JOIN Instructors i ON c.instructor_id = i.instructor_id;
⚡ Indexing Strategy

Indexes are added to improve query performance:

📄 [Indexes SQL File](./indexes/indexing.sql)

Key indexing decisions:
Emails (fast login/search)
Foreign keys (fast joins)
Frequently queried columns

🖼️ ERD (Entity Relationship Diagram)

The database structure:

Students ──< Enrollments >── Courses >── Lessons
│ │ │
│ │ └── Instructor
│ │
└──< Payments >── Courses
└──< Reviews >── Courses

📄 [ERD image](./erd/erd.png)
