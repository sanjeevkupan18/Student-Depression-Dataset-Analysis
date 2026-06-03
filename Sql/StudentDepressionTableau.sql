CREATE DATABASE TableauProject;
USE TableauProject;
SELECT * FROM studentdataset;



SELECT Gender,Count(*) FROM studentdataset GROUP BY Gender;

SELECT DISTINCT Gender FROM studentdataset;
SET SQL_SAFE_UPDATES = 0;
UPDATE studentdataset SET Gender='F' WHERE Gender='Female';
UPDATE studentdataset SET Gender='M' WHERE Gender='Male';

SELECT * FROM studentdataset WHERE Gender IS NULL;
SELECT * FROM studentdataset WHERE Gender = " ";




SELECT age,Count(*) AS Count FROM studentdataset 
GROUP BY age
ORDER BY age DESC;

ALTER TABLE studentdataset ADD Age_Group VARCHAR(20);
SELECT * FROM studentdataset;

UPDATE studentdataset 
SET Age_Group =
CASE WHEN Age BETWEEN 18 AND 24 THEN "A1"
ELSE CASE WHEN Age BETWEEN 25 AND 30 THEN 'A2'
ELSE 'A3' END END;

SELECT Age_Group , Count(*) AS Count FROM studentdataset
GROUP BY Age_Group;



SELECT * FROM INFORMATION_SCHEMA.columns WHERE table_name LIKE 'studentdataset';

ALTER TABLE studentdataset
CHANGE `Gender` gender TEXT,
CHANGE `Age` age INT,
CHANGE `Academic Pressure` academic_pressure DOUBLE,
CHANGE `Study Satisfaction` study_satisfaction DOUBLE,
CHANGE `Sleep Duration` sleep_duration TEXT,
CHANGE `Dietary Habits` dietary_habits TEXT,
CHANGE `Have you ever had suicidal thoughts ?` suicidal_thoughts TEXT,
CHANGE `Study Hours` study_hours INT,
CHANGE `Financial Stress` financial_stress INT,
CHANGE `Family History of Mental Illness` family_history_of_mental_illness TEXT,
CHANGE `Depression` depression TEXT;

SELECT academic_pressure , Count(*) AS Count FROM studentdataset
GROUP BY academic_pressure;

SELECT study_satisfaction, COUNT(*) AS count 
FROM studentdataset
GROUP BY study_satisfaction;

SELECT sleep_duration, COUNT(*) AS count 
FROM studentdataset
GROUP BY sleep_duration;

SELECT dietary_habits, COUNT(*) AS count 
FROM studentdataset
GROUP BY dietary_habits;

SELECT suicidal_thoughts, COUNT(*) AS count 
FROM studentdataset
GROUP BY suicidal_thoughts;

SELECT study_hours, COUNT(*) AS count 
FROM studentdataset
GROUP BY study_hours;

SELECT financial_stress, COUNT(*) AS count 
FROM studentdataset
GROUP BY financial_stress;

SELECT family_history_of_mental_illness, COUNT(*) AS count 
FROM studentdataset
GROUP BY family_history_of_mental_illness;

SELECT depression, COUNT(*) AS count 
FROM studentdataset
GROUP BY depression;



ALTER TABLE studentdataset ADD index_col INT AUTO_INCREMENT UNIQUE;
SELECT * FROM studentdataset;


















