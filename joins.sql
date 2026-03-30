-- =========================
-- JOINS
-- =========================

-- 1. Get all courses with instructor name
SELECT c.title, i.name AS instructor_name
FROM Courses c
JOIN Instructors i ON c.instructor_id = i.instructor_id;

-- 2. Get students enrolled in courses
SELECT s.name AS student_name, c.title AS course_title
FROM Enrollments e
JOIN Students s ON e.student_id = s.student_id
JOIN Courses c ON e.course_id = c.course_id;

-- 3. Get all lessons for a course
SELECT c.title AS course_title, l.title AS lesson_title
FROM Lessons l
JOIN Courses c ON l.course_id = c.course_id;

-- 4. Get payments with student and course info
SELECT s.name, c.title, p.amount, p.status
FROM Payments p
JOIN Students s ON p.student_id = s.student_id
JOIN Courses c ON p.course_id = c.course_id;

-- 5. Get reviews for courses with student names
SELECT s.name, c.title, r.rating, r.comment
FROM Reviews r
JOIN Students s ON r.student_id = s.student_id
JOIN Courses c ON r.course_id = c.course_id;