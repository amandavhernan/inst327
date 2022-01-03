/* Amanda Hernandez, INST327 - Assignment #6 */

/* Answer 1 */

USE ischool;
DROP VIEW IF EXISTS course_locations;

CREATE VIEW course_locations AS
SELECT CONCAT(course_code, course_number) AS 'course', section_number, 
	CONCAT(semester,' ', year) AS 'semester',
	CONCAT(fname, ' ',lname) AS instructor,
    CONCAT(building_code, ' ', room_number) AS 'location',
    building_name
FROM courses
	JOIN course_sections USING (course_id)
    LEFT JOIN locations USING (location_id)
    JOIN people ON course_sections.instructor_id = people.person_id 
    JOIN formats USING (format_id)
WHERE format = "Synchronous"
ORDER BY course, section_number;

/* check */
SELECT *
FROM course_locations;

/* Answer 2 */

USE ischool;
DROP PROCEDURE IF EXISTS person_by_state;

DELIMITER //

CREATE PROCEDURE person_by_state(
	location VARCHAR(100)
)
BEGIN
	SELECT DISTINCT CONCAT(fname, ' ', lname) AS 'person', department, street,
		CONCAT(city, ', ', state) AS 'location', classification
    FROM people
		JOIN person_addresses USING (person_id) 
        JOIN addresses USING (address_id)
        JOIN person_classifications USING (person_id)
        JOIN classification USING (classification_id)
	WHERE state = location
	ORDER BY person DESC, location, street;

END //

DELIMITER ;

/* check */
CALL person_by_state('VA');