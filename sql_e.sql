-- Join the 3 tables and show an output like below. Only a portion of the output table is shown below.

SELECT students.regi, students.name, code, courses.name as course_title, marks
FROM students
JOIN marks
ON students.regi = marks.regi
JOIN courses
ON course_code = code;