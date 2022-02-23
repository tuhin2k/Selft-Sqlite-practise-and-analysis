-- Show the mean, minimum and maximum marks obtained by the students in the course with code CSE333.

SELECT course_code, AVG(marks) as mean, MIN(marks) as minimum, MAX(marks) as maximum
FROM marks
WHERE course_code = 'CSE333';