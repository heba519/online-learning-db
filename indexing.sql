-- =========================
-- INDEXES
-- =========================

-- Students
CREATE INDEX idx_students_email ON Students(email);

-- Instructors
CREATE INDEX idx_instructors_email ON Instructors(email);

-- Courses
CREATE INDEX idx_courses_instructor ON Courses(instructor_id);

-- Lessons
CREATE INDEX idx_lessons_course ON Lessons(course_id);

-- Enrollments
CREATE INDEX idx_enrollments_student ON Enrollments(student_id);
CREATE INDEX idx_enrollments_course ON Enrollments(course_id);

-- Payments
CREATE INDEX idx_payments_student ON Payments(student_id);
CREATE INDEX idx_payments_course ON Payments(course_id);

-- Reviews
CREATE INDEX idx_reviews_student ON Reviews(student_id);
CREATE INDEX idx_reviews_course ON Reviews(course_id);