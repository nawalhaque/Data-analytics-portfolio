# Students Performance Analysis Project

## Overview

The purpose of this project is to analyze students' academic performance using SQL and derive meaningful insights that can inform educators, parents, and policymakers. By examining various factors such as gender, race/ethnicity, parental education level, and test preparation, this analysis aims to uncover trends that impact students' math, reading, and writing scores.

The dataset used for this project consists of the following attributes:

- **Gender**: Indicates whether the student is male (1) or female (0).
- **Race/Ethnicity**: Identifies the student's racial or ethnic background.
- **Parental Level of Education**: Represents the highest educational attainment of the student's parents.
- **Lunch**: Indicates whether the student received a free/reduced lunch (1 for yes, 0 for no).
- **Test Preparation Course**: Indicates whether the student completed a test preparation course (1 for yes, 0 for no).
- **Math Score, Reading Score, Writing Score**: Measures of the student's performance in these academic areas.

## Project Workflow

### 1. Data Loading and Initial Inspection
The dataset was imported into a SQL environment using DBeaver, where the structure and data were checked for accuracy and completeness. Each column's type was verified to ensure it was appropriate for analysis.

### 2. SQL Queries for Analysis
Fifteen SQL queries were designed to explore various aspects of student performance and identify patterns and relationships. The queries included basic aggregations, comparisons, and advanced queries using subqueries and window functions.

### 3. Key Queries Executed:
- **Total Student Count**: Determined the overall number of students in the dataset.
- **Average Scores by Gender**: Compared performance between male and female students.
- **Highest Scoring Students**: Identified the highest individual scores in math, reading, and writing.
- **Average Scores by Race/Ethnicity**: Showed how different demographic groups performed academically.
- **Impact of Test Preparation**: Assessed how completing a test preparation course affected scores.
- **Impact of Lunch Status**: Investigated the relationship between lunch status and academic performance.
- **Variance in Scores by Gender**: Analyzed the consistency of performance between genders.
- **Correlation of Parental Education Level with Scores**: Explored whether higher parental education correlated with better scores.
- **Students Who Scored Above Average in All Subjects**: Identified high achievers in all academic areas.

### 4. Insights and Interpretation:
The SQL queries revealed several notable trends:

- **Gender Differences**: Male students showed slightly higher average scores in math, while female students excelled in reading and writing. This suggests potential areas for targeted educational interventions to balance performance.
- **Racial/Ethnic Performance**: Students from certain racial/ethnic groups showed stronger performance in total scores. These findings highlight disparities that might need addressing through educational policy.
- **Parental Education**: Higher parental education levels correlated with better student performance, emphasizing the importance of family involvement in academic success.
- **Test Preparation Course Impact**: Students who completed test preparation courses scored higher on average across all subjects, suggesting that structured preparation can significantly boost student achievement.
- **Lunch as a Socioeconomic Indicator**: Students who received free or reduced lunch generally had lower average scores, underscoring the link between socioeconomic status and academic performance.

### 5. Challenges and Limitations:
While the analysis provided valuable insights, it is important to note the limitations:
- **Correlation vs. Causation**: The results show correlations but do not imply causation.
- **Data Granularity**: The dataset does not capture other influential factors such as teaching quality or student motivation.
- **Binary Simplification**: Attributes such as "lunch" and "test preparation" are represented as binary variables (0 or 1), which may oversimplify complex socioeconomic statuses.

## Results and Findings:

### 1. Total Number of Students:
- The dataset included a total of 1,000 students.

### 2. Average Scores by Gender:
- Male students had an average math score of 68.7, while female students averaged 63.6.
- Female students had higher average reading and writing scores, indicating a gender-based performance difference that could influence teaching strategies.

### 3. Highest Scores in Math:
- The highest individual math score was 100, achieved by multiple students, showcasing high achievers' academic capabilities.

### 4. Average Scores by Race/Ethnicity:
- Ethnicity group B had an average total score lower than groups C and D, pointing towards performance disparities that may warrant educational support programs.

### 5. Impact of Test Preparation:
- Students who completed test preparation courses scored consistently higher, proving the positive impact of additional preparation.

## How to Use This Project:
This project repository includes:
- **SQL Queries**: A file containing all SQL queries used for analysis (`students_performance_analysis.sql`).
- **Results**: Output files for each query stored as CSV files.
- **Dataset**: The original and cleaned dataset files used for this analysis.


