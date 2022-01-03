# Team 1: Amanda Hernandez, Abby Miller, Nick Pascale, Snigdha Penmetsa, & Siddhant Tiwari
# Queries

# 1. Finds the average population of the top three cities with the highest number of sightings. 

SELECT city_id, city_name, COUNT(city_id) AS 'city frequency'
FROM sightings
JOIN city USING(city_id)
GROUP BY city_id
HAVING COUNT(city_id) > 1
ORDER BY COUNT(city_id) DESC;
# Returns cities associated with more than one sighting
# Top 3: Miami, Las Vegas, and Phoenix

CREATE VIEW avg_pop AS
SELECT  FORMAT(AVG(population),2) AS 'avg population'
	FROM ( 
		SELECT o.city_id, o.city_name, o.population, COUNT(c.city_id) AS 'frequency'
			FROM city o
			JOIN sightings c ON o.city_id = c.city_id
			GROUP BY city_id
			HAVING COUNT(c.city_id) > 1
			ORDER BY COUNT(c.city_id) DESC ) x
WHERE frequency >= 5;
# Determines average populations of Miami, Las Vegas, and Phoenix

SELECT * FROM avg_pop;

# 2. Returns the frequencies of sightings based on state and region, allowing for analysis on geographical anomalies.

CREATE VIEW state_region AS
SELECT state_territory_id, state_territory_name, 
       COUNT(state_territory_id) AS 'state frequency', 
       region_id, region_name, COUNT(region_id) AS 'region frequency'
FROM sightings
JOIN state_territory USING(state_territory_id)
JOIN region USING (region_id)
GROUP BY state_territory_id, region_id
ORDER BY COUNT(state_territory_id) DESC;

SELECT * FROM state_region;

# 3. Collects and stores information about informants in California, including sighting description.

CREATE VIEW cali_informants AS
SELECT CONCAT(fname, " ", lname) AS 'informant', gender, age_group AS 'age group', 
	   s.sighting_id, s.summary, state_territory_name AS 'state'
FROM sightings s
	JOIN informants_sightings USING(sighting_id)
	JOIN informants USING(informant_id)
	JOIN age_group USING(age_id)
	JOIN gender USING(gender_id)
	JOIN state_territory USING(state_territory_id)
WHERE state_territory_name = 'California';

SELECT * FROM cali_informants;

# 4. Returns sightings from the region with the highest average sighting duration.

SELECT AVG(duration) FROM sightings
WHERE region_id = 1;

SELECT AVG(duration) FROM sightings
WHERE region_id = 2;

SELECT AVG(duration) FROM sightings
WHERE region_id = 3;

SELECT AVG(duration) FROM sightings
WHERE region_id = 4;
# Determines the highest/lowest average duration based on region
# Region 4 (west) has the highest average duration

CREATE VIEW avg_dur AS
SELECT sighting_id, summary, duration, date, shape_type AS 'shape', city_name AS 'city', 
       state_territory_name AS 'state', population
FROM sightings
JOIN ufo_descr USING(ufo_shape_id)
JOIN city USING(city_id)
JOIN state_territory USING(state_territory_id)
JOIN region USING(region_id)
WHERE region_id = 4
ORDER BY duration DESC;

SELECT * FROM avg_dur;

# 5. Summarizes information about informants who reported a sighting more than once.

# STEP 1 - Set up JOINs to return information for all informants and all sightings
SELECT *
FROM informants 
JOIN informants_sightings USING (informant_id)
JOIN sightings USING (sighting_id)
ORDER BY fname, lname;

# Step 2 - GROUP information of each informant together by informant_id, and find frequency with COUNT
SELECT informant_id, fname, lname, COUNT(informant_id) AS 'frequency'
FROM informants 
JOIN informants_sightings USING (informant_id)
JOIN sightings USING (sighting_id)
GROUP BY informant_id 
ORDER BY fname, lname;

# STEP 3 - Now that you can see all informants and counts, only get info for informants HAVING sightings > 1
CREATE VIEW repeat_informants AS
SELECT informant_id, CONCAT(fname, " ",lname) AS 'informant', gender, age_group,
	   COUNT(informant_id) AS 'frequency'
FROM informants 
JOIN informants_sightings USING (informant_id)
JOIN sightings USING (sighting_id)
JOIN age_group USING (age_id)
JOIN gender USING (gender_id)
GROUP BY informant_id 
HAVING frequency > 1
ORDER BY frequency DESC;

SELECT * FROM repeat_informants;