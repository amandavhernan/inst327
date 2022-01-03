/* Amanda Hernandez, INST327 - Assignment #2 */  

/* Answer 1 */  
SELECT CONCAT(lname, ', ', fname) AS person_name, people.person_id, department, 
	COALESCE(title, 'Student') AS 'title', pronoun AS 'preferred_pronouns', race
FROM people
	INNER JOIN person_race USING (person_id)
	INNER JOIN pronouns USING (pronoun_id)
	INNER JOIN race USING (race_id)
WHERE title IS NOT NULL
UNION
SELECT CONCAT(lname, ', ', fname) AS person_name, people.person_id, department, 
	COALESCE(title, 'Student') AS 'title', pronoun AS 'preferred_pronouns', race
FROM people
	INNER JOIN person_race USING (person_id)
	INNER JOIN pronouns USING (pronoun_id)
	INNER JOIN race USING (race_id)
WHERE title IS NULL
ORDER BY department DESC, title ASC, person_name ASC;

/* Answer 2 */  
SELECT CONCAT(course_code,course_number) AS course, 
	CONCAT(semester, " ", year, " - ", section_number) AS section,
	CONCAT(fname," ", lname) AS student_name, course_description
FROM courses
	INNER JOIN course_sections USING (course_id)
    LEFT JOIN enrollments USING (section_id)
    LEFT JOIN people USING (person_id)
ORDER BY course DESC, year ASC, section_number ASC, lname ASC;