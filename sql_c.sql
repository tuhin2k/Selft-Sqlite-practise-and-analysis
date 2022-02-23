-- Show the names and registration numbers of students who got marks >= 80 in the course with code CSE335.

SELECT name, students.regi as registration_no, marks
FROM students INNER JOIN marks
ON students.regi = marks.regi
WHERE course_code = 'CSE335' AND marks >= 80;