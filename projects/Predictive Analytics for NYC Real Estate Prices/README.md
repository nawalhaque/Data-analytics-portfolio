
# Advanced Data Analytics Project: NYC House Sale Prices Prediction

## Overview

This project involves a detailed analysis and regression modeling of house sales data released by the New York government. The primary objective is to build a robust regression model to predict house sale prices across different boroughs in New York City for the years 2021, 2022, and 2023.

## Data Description

The dataset includes house sales data from five boroughs of New York City over three years. Data consolidation and preprocessing were necessary steps before conducting any analysis.

- **Source:** New York City Finance Department ([Rolling Sales Data](https://www.nyc.gov/site/finance/property/property-rolling-sales-data.page), [Annualized Sales Update](https://www.nyc.gov/site/finance/property/property-annualized-sales-update.page))
- **Contents:** Sales records include details like sale price, house type, borough, building class category, and other related features.

## Prerequisites

To run the analysis, ensure the following prerequisites are met:
- Python 3.8 or later
- Jupyter Notebook
- Required Python packages: `pandas`, `numpy`, `matplotlib`, `seaborn`, `scikit-learn`

You can install the required packages using the following command:
```bash
pip install pandas numpy matplotlib seaborn scikit-learn
```

## How to Run

1. **Clone the Repository:**
   - Clone this repository to your local machine or download the zip file.

2. **Prepare the Data:**
   - Ensure the consolidated CSV file, as described in the Data Preparation section, is placed in the same directory as the Jupyter notebook.

3. **Open Jupyter Notebook:**
   - Launch Jupyter Notebook in the project directory by running:
     ```bash
     jupyter notebook
     ```

4. **Run the Notebook:**
   - Open the `NYC_House_Sale_Prices.ipynb` notebook.
   - Execute the cells sequentially to perform data loading, cleaning, exploration, hypothesis testing, feature engineering, and regression analysis.

## Methodology

### Data Preparation

- **CSV Consolidation:** Merged annual sales data from multiple files into a single CSV to facilitate easier access and manipulation.
- **Data Cleaning:** Handled missing values, standardized formats, and filtered outliers to improve the quality and reliability of the data.

### Data Exploration and Hypothesis Testing

- **Statistical Analysis:** Computed descriptive statistics for house prices across boroughs, analyzed types of houses, and assessed the completeness of the dataset.
- **Hypothesis Testing:** Conducted tests to analyze the recovery of house prices in two selected boroughs post-COVID-19. The choice of tests and boroughs was based on preliminary findings and aimed at evaluating market resilience.

### Feature Engineering and Regression Analysis

- **Feature Selection:** Identified and selected significant features impacting house prices based on correlation and multicollinearity analysis.
- **Model Development:** Developed two regression models:
  - **Model A:** Utilized engineered features.
  - **Model B:** Used raw features for comparison.
- **Performance Evaluation:** Both models were evaluated using the same split of training (80%) and testing (20%) data. Metrics such as RMSE and R² were used to compare their predictive power.

## Results

The project successfully highlighted the significant predictors of house sale prices and established that Model A, with feature engineering, outperformed Model B, suggesting the importance of thoughtful feature selection. The detailed performance metrics underscored the effectiveness of the models in different scenarios.

## Conclusion

The analysis and modeling efforts provide insightful predictions of house prices, aiding in understanding market trends and assisting potential stakeholders in making informed decisions.

