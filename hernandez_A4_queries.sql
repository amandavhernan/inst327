/* Amanda Hernandez, INST327 - Assignment #4 */

/* Answer 1 */
SELECT 
	CONCAT(fname,' ', lname) AS 'student_name',
    SUM(credits) AS 'credit_count', 
    COUNT(*) AS 'enrollments',
    TIME_FORMAT(MAX(start_time), '%h:%i:%s %p') AS latest_date
FROM people
	JOIN enrollments USING(person_id)
    JOIN course_sections USING(section_id)
    JOIN courses USING(course_id)
GROUP BY student_name WITH ROLLUP
ORDER BY student_name ASC;

/* Answer 2 */
/* I decided to use a subquery because I feel a bit more confident working 
with them compared to CTEs. When we first started using subqueries, it was 
really helpful to think about how the subquery itself informs the main query. 
I also liked working with a subquery for this question because I could break 
each part down into smaller, manageable steps. */

SELECT CONCAT(course_code, course_number) AS 'course', credits, 
COUNT(*) AS 'section_count', enrollment_count
FROM courses
	JOIN course_sections USING(course_id)
LEFT JOIN (SELECT course_id, COUNT(*) AS 'enrollment_count'
FROM people
	JOIN enrollments USING(person_id)
    JOIN course_sections USING(section_id)
    JOIN courses USING(course_id)
GROUP BY course_id) AS new_table USING(course_id)
GROUP BY course_id
ORDER BY enrollment_count DESC, course;