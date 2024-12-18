
# NYC House Sales Price Prediction

## Project Overview

This project aims to analyze and predict house sales prices in New York City using a regression model. The focus is on data spanning three years across five boroughs, aiming to understand factors influencing price fluctuations and market trends post-COVID-19.

## Data

The dataset comprises three years of house sales data (2021-2023) for New York City, sourced from the official [NYC property sales records](https://www.nyc.gov/site/finance/property/property-rolling-sales-data.page). Data includes detailed transaction records across five boroughs. For this analysis, data was aggregated and cleaned into a single CSV file, facilitating easier manipulation and modeling.

## Analysis

### Data Exploration and Hypothesis Testing
- **Objective:** Assess the statistical characteristics of the housing market in NYC, focusing on house price distributions and identifying common property types.
- **Methodology:** Initial data exploration involved generating descriptive statistics for each borough and identifying missing data. Further analysis included hypothesis testing to evaluate the recovery trends of house prices in two selected boroughs post-COVID-19, using appropriate statistical tests based on the data characteristics and analysis goals.

### Feature Engineering and Regression Analysis
- **Objective:** Develop a predictive model for house sales prices based on refined features and compare it against a baseline model using raw data.
- **Approach:**
  - **Feature Selection and Engineering:** Identified relevant features influencing house prices based on initial findings, and conducted multicollinearity checks to ensure robustness.
  - **Model Development:** Constructed two regression models:
    - **Model A:** Employed selected and engineered features.
    - **Model B:** Utilized raw features without modifications.
  - **Comparison:** Evaluated and compared both models on training and testing data sets to ascertain the benefits of feature engineering.

## Results and Conclusions

The predictive accuracy of the models was quantitatively assessed, demonstrating the effectiveness of feature engineering in enhancing model performance. The analysis showed significant differences in predictive power between the two models, highlighting the impact of thoughtful feature selection.

## Future Work

Ongoing improvements will focus on integrating more complex modeling techniques and exploring additional data sources to refine predictions and adapt to changing market conditions. I plan to revisit this project periodically to implement new analytical techniques and update the models based on the latest data.

