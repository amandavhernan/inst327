/* Amanda Hernandez, INST327 - Assignment #3 */

/* Answer 1 */

-- drop table statements --
DROP TABLE IF EXISTS people_copy;
DROP TABLE IF EXISTS enrollments_copy;

-- create people_copy, insert data --
CREATE TABLE people_copy LIKE people;
INSERT INTO people_copy
SELECT *
FROM people;

INSERT INTO people_copy
	(lname, fname, pronoun_id, email, college, department, title, start_date)
VALUES ('Smith', 'Richard', '2', 'rsmith@umd.edu', 'College of Information Studies', 'BSIS', DEFAULT, NOW());

-- create enrollments_copy, insert data --
CREATE TABLE enrollments_copy LIKE enrollments;
INSERT INTO enrollments_copy
SELECT * 
FROM enrollments;

INSERT INTO enrollments_copy
	(person_id, section_id)
VALUES (132466095, 46), (132466095, 55);

-- check --
SELECT * 
FROM people_copy;

SELECT * 
FROM enrollments_copy;

/* Answer 2 */

-- update --
UPDATE enrollments_copy
SET section_id = 47
WHERE person_id = 132466095 AND section_id = 46;

-- check enrollments --
SELECT 
	CONCAT(people_copy.fname, ' ', people_copy.lname) AS student_name, 
	CONCAT(courses.course_code, courses.course_number) AS course,
    course_sections.section_number,
    CONCAT(course_sections.semester, ' ', course_sections.year) AS semester_year
FROM people_copy
    JOIN enrollments_copy USING(person_id)
    JOIN course_sections USING(section_id)
    JOIN courses USING(course_id)
WHERE people_copy.person_id = 132466095;
    
/* Answer 3 */

-- students enrolled in inst327 --
SELECT 
	CONCAT(people_copy.fname, ' ', people_copy.lname) AS student_name, 
	CONCAT(course_code, course_number) AS course,
    section_number, section_id, 
    CONCAT(instructors.fname, ' ', instructors.lname) AS instructor_name
FROM people_copy
	JOIN enrollments_copy USING(person_id)
    JOIN course_sections USING(section_id)
    JOIN courses USING(course_id)
    JOIN people_copy instructors ON instructors.person_id = course_sections.instructor_id
WHERE course_number = 327 AND course_id = 14;

-- find section ids assocated with inst327 --
SELECT * 
FROM course_sections
WHERE course_id = 14;

-- delete statement --
DELETE FROM enrollments_copy
WHERE section_id IN (54, 55, 56, 57, 58, 59, 60, 61);

-- check --
SELECT 
	CONCAT(people_copy.fname, ' ', people_copy.lname) AS student_name, 
	CONCAT(course_code, course_number) AS course,
    section_number, section_id, 
    CONCAT(instructors.fname, ' ', instructors.lname) AS instructor_name
FROM people_copy
	JOIN enrollments_copy USING(person_id)
    JOIN course_sections USING(section_id)
    JOIN courses USING(course_id)
    JOIN people_copy instructors ON instructors.person_id = course_sections.instructor_id
WHERE course_number = 327 AND course_id = 14;