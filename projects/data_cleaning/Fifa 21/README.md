# FIFA 21 Data Cleaning Project

## Project Overview
This project showcases my data cleaning skills using a raw dataset from the FIFA 21 video game. The dataset, from kaggle (https://www.kaggle.com/datasets/yagunnersya/fifa-21-messy-raw-dataset-for-cleaning-exploring), includes various information about players, including their physical attributes, wages, transfer values, and career details. The dataset is intentionally messy, providing an ideal opportunity to demonstrate data wrangling and cleaning techniques.

## Dataset
The FIFA 21 dataset contains numerous columns with information on each player's:
- Physical characteristics (Height, Weight)
- Career statistics (Joined, Years at Club)
- Financial details (Value, Wage, Release Clause)
- Ratings (Skill Moves, Weak Foot)

This data was processed in Python using a Jupyter notebook, with the main objective being to transform the data into a clean, consistent, and usable format.

## Objectives
- **Convert columns like `Height` and `Weight`** to a standardized numerical format.
- **Remove unnecessary newline characters** across all columns to improve readability and analysis.
- **Convert financial columns (`Value`, `Wage`, and `Release Clause`)** to numeric values by handling currency symbols and abbreviations.
- **Extract players with over 10 years of tenure** at their current club.
- **Identify players who are highly valuable but underpaid**, analyzing potential undervaluation.

## Data Cleaning Process

### 1. Standardizing `Height` and `Weight`
The `Height` and `Weight` columns initially contained mixed units (e.g., feet/inches and centimeters for height, pounds, and kilograms for weight). These were standardized to:
- Inches for `Height`
- Pounds for `Weight`

### 2. Removing Newline Characters
Many text columns contained newline characters (`\n`) that cluttered the data. These were removed across all columns to enhance data readability.

### 3. Converting Financial Data
The `Value`, `Wage`, and `Release Clause` columns included the euro symbol (€) and abbreviations like "M" for millions and "K" for thousands. These were converted to numeric values by:
- Removing the euro symbol,
- Expanding "M" to 1,000,000 and "K" to 1,000.

### 4. Cleaning Star Ratings
Columns such as `Skill Moves` and `Weak Foot` used star symbols (★) to represent ratings. These symbols were removed, and the columns were converted to numeric format.

### 5. Calculating Player Tenure
The `Joined` column indicated the year each player joined their club. Using this data, I calculated each player’s tenure and identified those with over 10 years of loyalty to their current club.

### 6. Identifying High-Value, Low-Wage Players
Using the cleaned financial data, I analyzed players with high market value but relatively low wages. A scatter plot visualizes the relationship between player `Value` and `Wage`, highlighting players who may be undervalued in terms of salary.

## Insights and Visualizations
The cleaned data provides insights into player attributes, loyalty, and financial valuation:
- **Scatter Plot**: A scatter plot shows the correlation between `Value` and `Wage`, identifying high-value, low-wage players who might be considered underpaid.
- **Tenure Analysis**: Players with over 10 years at their club were highlighted, showing loyalty trends.

## Conclusion
This project demonstrates data cleaning techniques on a messy, real-world dataset. By standardizing units, removing unnecessary characters, and converting data to numeric formats, the FIFA 21 dataset is now ready for analysis and modeling.

## Usage
The cleaned dataset and analysis can be used for:
- Player valuation models
- Salary and tenure analyses
- Further data science projects

## Files
- `fifa21_Cleaned.ipynb`: Jupyter notebook with full data cleaning process and visualizations.
- `fifa21_cleaned.csv`: (Optional) Cleaned dataset available for download and analysis.

---

Feel free to explore the code and analysis in the Jupyter notebook!
