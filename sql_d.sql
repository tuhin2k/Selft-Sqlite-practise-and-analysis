-- Count the number of students who got less than 40 marks in the “Introduction to Data Science” exam. 

SELECT COUNT(*) as Total_number_of_students_with_marks_less_than_40, name as Course_Name, code as Course_Code
FROM courses INNER JOIN marks
WHERE code = course_code AND name = 'Introduction to Data Science' AND marks < 40;