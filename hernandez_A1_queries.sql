/* Amanda Hernandez, INST327 - Assignment #1 */

/* Answer 1 */
SELECT CONCAT(street,', ',city) AS 'Street/City', 
	state AS State, zipcode AS Zipcode, country AS Country, 
	RIGHT(main_phone, 4) AS 'Last 4 Digits of Phone'
FROM addresses
WHERE country > 'J'
ORDER BY country ASC, state ASC, zipcode ASC;

/* Answer 2 */
SELECT
    CONCAT(lname,', ',fname) AS person_name, 
    start_date, 
    department, 
    "Student"
FROM people
WHERE 
	title IS NULL
	AND start_date > '2020-03-12 00:00:00' 
    AND start_date < '2021-08-11 00:00:00'
ORDER BY start_date DESC, person_name ASC;