# FIFA 21 Data Cleaning and Analysis

## Project Overview
This project focuses on cleaning, transforming, and visualizing the FIFA 21 dataset to make it suitable for data analysis. The primary goal is to address data quality issues, standardize formats, and generate insights through visualizations.

## Dataset
The dataset includes detailed player information, covering:
- **Player Details**: Name, Nationality, Club, Position(s).
- **Physical Characteristics**: Height, Weight.
- **Financial Metrics**: Value, Wage, Release Clause.
- **Performance Metrics**: Overall rating, Skill attributes.

## Data Cleaning Steps

### 1. Loading the Dataset
   - Loaded the FIFA 21 dataset and displayed the first few rows to understand its structure.

### 2. Handling Missing Values
   - Checked for missing values across columns and displayed counts of missing values.
   - Filled missing numerical values with the median and filled categorical missing values with the mode.

### 3. Removing Duplicates
   - Checked for duplicates within the dataset and removed any duplicate rows.
   - Verified that no duplicate rows remained after this step.

### 4. Standardizing Height and Weight
   - **Height**: Converted all height values to inches, handling various formats (e.g., feet/inches, centimeters).
   - **Weight**: Converted all weight entries to pounds (lbs), converting values from kilograms where necessary.

### 5. Removing Newline Characters
   - Removed newline characters from all string columns to ensure consistent formatting.

### 6. Cleaning Financial Data
   - Standardized monetary values (Value, Wage, Release Clause) by removing currency symbols and converting abbreviated values (e.g., "M" for million, "K" for thousand) to numeric values.

### 7. Converting Star-Rated Columns to Numeric
   - Converted columns representing star ratings (e.g., Weak Foot, Skill Moves, International Reputation) to numeric by removing star symbols and converting to floats.

### 8. Date Handling and Tenure Calculation
   - Converted the `Joined` column to datetime format.
   - Created a new column `Years_at_Club` to calculate player tenure at the current club in years.
   - Filtered players with over 10 years at their current club to explore long-term players.

### 9. Creating New Columns
   - **Value-to-Wage Ratio**: Calculated the `Value_to_Wage_Ratio` to analyze player value relative to wage.
   - Filtered players with high value but low wage for further analysis.

## Visualizations
Several visualizations were created to explore and gain insights from the cleaned data:

1. **Player Value vs. Wage**: A scatter plot to observe the relationship between player value and wage.
2. **Top 10 Countries by Number of Players**: A bar plot to showcase the countries with the most players in the dataset.
3. **Distribution of Player Height and Weight**: Histograms to examine the distribution of player height and weight.
4. **Top 10 Clubs by Average Player Rating**: A bar plot to display the clubs with the highest average player ratings.
5. **Distribution of Overall Ratings by Position**: A box plot to analyze the variation in overall ratings across different positions.
6. **Correlation Heatmap of Player Attributes**: A heatmap to examine correlations among key player attributes, revealing relationships between skills and physical characteristics.

## Requirements
- **Python 3.6+**
- **Pandas**
- **Matplotlib**
- **Seaborn**

To install the required packages, use:
```bash
pip install pandas matplotlib seaborn
