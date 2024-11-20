-- analysis_queries.sql
-- This file contains all SQL queries used for analysis in the Students Performance project.


-- Query 1: Overview of total number of students
SELECT COUNT(*) AS total_records FROM Cleaned_Students_Performance;

-- Query 2: Average scores by gender
SELECT gender, 
       AVG(math_score) AS avg_math_score, 
       AVG(reading_score) AS avg_reading_score, 
       AVG(writing_score) AS avg_writing_score
FROM Cleaned_Students_Performance
GROUP BY gender;

-- Query 3: Highest scoring student in math
SELECT * 
FROM Cleaned_Students_Performance
ORDER BY math_score DESC
LIMIT 1;

-- Query 4: Average total score for each race/ethnicity group
-- Description: Calculate the average total score (sum of math, reading, and writing scores) for each race/ethnicity group.
SELECT race_ethnicity, 
        AVG(total_score) AS avg_total_score
FROM Cleaned_Students_Performance
GROUP BY race_ethnicity;

-- Query 5: Number of students who completed the test preparation course
-- Description: Count how many students completed the test preparation course.
SELECT COUNT(*) AS prepared_students 
FROM Cleaned_Students_Performance
WHERE test_preparation_course = 1;

-- Query 6: Impact of lunch on scores
-- Description: Analyze whether receiving lunch (yes/no) impacts the average math, reading, and writing scores.
SELECT lunch,
       AVG(math_score) AS avg_math_score, 
       AVG(reading_score) AS avg_reading_score, 
       AVG(writing_score) AS avg_writing_score
FROM Cleaned_Students_Performance
GROUP BY LUNCH;

-- Query 7: Students scoring above 90 in all subjects
-- Description: List all students who scored above 90 in math, reading, and writing.
SELECT *
FROM Cleaned_Students_Performance
WHERE math_score > 90 AND reading_score > 90 AND writing_score > 90;

-- Query 8: Gender-wise highest score in each subject
-- Description: Find the highest score in math, reading, and writing for each gender.
SELECT gender,
        max(math_score),
        max(reading_score),
        max(writing_score)
FROM Cleaned_Students_Performance
GROUP BY gender;

-- Query 9: Performance comparison of students based on parental level of education
-- Description: Analyze average math, reading, and writing scores based on different levels of parental education.
SELECT parental_level_of_education,
       AVG(math_score) AS avg_math_score, 
       AVG(reading_score) AS avg_reading_score, 
       AVG(writing_score) AS avg_writing_score
FROM Cleaned_Students_Performance
GROUP BY parental_level_of_education;

-- Query 10: Count of students with a total score above a certain threshold
-- Description: Count how many students have a total score above a specific threshold (290).
SELECT COUNT(*) AS high_achievers
FROM Cleaned_Students_Performance
WHERE total_score >= 295;

-- Query 11: Analysis of score variance by gender
-- Description: Calculate the variance of total scores for each gender to understand performance consistency.
SELECT gender,
        variance(total_score) as totall_score_variance
FROM Cleaned_Students_Performance
GROUP BY gender;

-- Query 12: Students who scored below the average in all subjects
-- Description: Identify students whose math, reading, and writing scores are below the average scores for each respective subject.
WITH AvgScores AS (
    SELECT 
        AVG(math_score) AS avg_math_score, 
        AVG(reading_score) AS avg_reading_score, 
        AVG(writing_score) AS avg_writing_score
    FROM Cleaned_Students_Performance
)
SELECT *
FROM Cleaned_Students_Performance, AvgScores
WHERE 
    math_score < AvgScores.avg_math_score AND 
    reading_score < AvgScores.avg_reading_score AND 
    writing_score < AvgScores.avg_writing_score;

-- Query 13: Influence of Parental Education Level on High Achievers
-- Description: Count the number of students who scored above 80 in math, reading, and writing, grouped by parental level of education.
SELECT count(*) as high_achivers, parental_level_of_education 
FROM Cleaned_Students_Performance
WHERE math_score > 80 AND reading_score > 80 AND writing_score > 80
GROUP BY parental_level_of_education 
ORDER BY high_achivers DESC;

-- Query 14: Top 5 students with the highest average score
-- Description: Retrieve the top 5 students who have the highest average scores across all subjects.
SELECT *, (math_score + reading_score + writing_score) / 3 AS avg_score 
FROM Cleaned_Students_Performance
ORDER BY avg_score DESC
LIMIT 5;

-- Query 15: Performance distribution by parental level of education and test preparation
-- Description: Show the average scores grouped by both parental education level and whether the student completed the test preparation course.
SELECT parental_level_of_education, test_preparation_course, 
        AVG(math_score) AS avg_math_score, 
        AVG(reading_score) AS avg_reading_score, 
        AVG(writing_score) AS avg_writing_score
FROM Cleaned_Students_Performance
GROUP BY parental_level_of_education, test_preparation_course; 




