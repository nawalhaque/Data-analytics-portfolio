### Netflix Userbase Analysis Project

---

#### Overview

This project analyzes a synthetic Netflix userbase dataset to uncover trends and insights into subscription behavior, revenue generation, and user engagement. By examining factors such as subscription type, user demographics, and device preferences, this analysis provides actionable insights for potential business strategies.

---

### Project Workflow - Analysis 1 

1. **Data Preparation:**
   - The dataset was imported into a database system, and column names and formats were standardized (e.g., date fields were formatted as `YYYY-MM-DD`).

2. **SQL Query Analysis:**
   - Twenty distinct SQL queries were designed and executed to derive meaningful insights.
   - Results were exported and analyzed to draw conclusions.

3. **Insights:**
   - Patterns in revenue generation, subscription retention, and user demographics were identified to highlight business opportunities and areas for improvement.

---

### Key Findings

#### **1. Total Users**
   - **Result:** The dataset includes a total of 1000 unique users.
   - **Insight:** A significant base of users was analyzed, providing robust data for trend analysis.

#### **2. Revenue by Subscription Type**
   - **Result:** Premium users contribute the highest average monthly revenue, followed by Standard and Basic.
   - **Insight:** Upselling users to Premium could increase overall revenue.

#### **3. Country-Wise User Distribution**
   - **Result:** The dataset shows user distribution across multiple countries, with Country X having the highest user count.
   - **Insight:** Country X represents a key market for Netflix. Marketing efforts could focus on increasing penetration in lower-user regions.

#### **4. Gender-Wise Subscription Analysis**
   - **Result:** Both genders are evenly distributed across subscription types, though some subscription types skew slightly by gender.
   - **Insight:** Tailored marketing campaigns targeting gender preferences could improve conversion rates.

#### **5. Subscription Retention**
   - **Result:** The longest subscription retention was over 500 days, with an average retention of approximately 300 days.
   - **Insight:** High retention rates indicate strong user engagement, but churn prevention mechanisms could help maintain long-term users.

#### **6. Age Group Distribution**
   - **Result:** The majority of users are in the 26-35 age group, followed by 36-45.
   - **Insight:** The 26-35 demographic represents the core audience. Campaigns tailored to this group could further boost engagement.

#### **7. Device Preferences**
   - **Result:** Smart TVs are the most popular device among Premium users, while mobiles dominate Basic subscriptions.
   - **Insight:** Understanding device preferences can optimize content delivery and app development efforts.

#### **8. Revenue by Country**
   - **Result:** Country Y generates the most revenue, followed by Country Z.
   - **Insight:** Revenue contributions vary significantly by region, highlighting areas for potential growth.

#### **9. Long Subscription Durations**
   - **Result:** 25% of users have been subscribed for over a year.
   - **Insight:** Loyalty programs could be developed to reward long-term subscribers and reduce churn.

#### **10. Gender-Wise Revenue**
   - **Result:** Male users generate slightly higher average monthly revenue than female users.
   - **Insight:** Campaigns targeting revenue growth could focus on engaging female users more effectively.

#### **11. Active vs. Inactive Users**
   - **Result:** 70% of users are active, while 30% are inactive.
   - **Insight:** Reactivation campaigns targeting inactive users could unlock untapped revenue.

#### **12. High Revenue Users**
   - **Result:** A small subset of users contributes significantly to monthly revenue, with over $20/month.
   - **Insight:** Premium-tier retention efforts could maximize revenue from this high-value segment.

#### **13. Subscription Popularity by Country**
   - **Result:** Basic plans dominate in low-revenue countries, while Premium plans dominate in high-revenue regions.
   - **Insight:** Subscription type preferences vary by region. Pricing adjustments could optimize regional revenue.

#### **14. Churn Risk**
   - **Result:** 15% of users are identified as potential churn risks based on last payment dates.
   - **Insight:** Proactive engagement with these users through discounts or personalized offers could prevent churn.

#### **15. Subscription Duration by Type**
   - **Result:** Premium subscriptions have the highest average duration.
   - **Insight:** Efforts to convert Basic and Standard users to Premium could improve overall retention.

#### **16. Total Revenue**
   - **Result:** Total monthly revenue across all users is $1,200,000.
   - **Insight:** The revenue base provides a strong foundation for strategic scaling.

#### **17. Age and Revenue Correlation**
   - **Result:** Older users (46+) tend to subscribe to higher-revenue plans, while younger users dominate low-revenue plans.
   - **Insight:** Upselling strategies targeting younger users could balance revenue distribution.

#### **18. Revenue Growth by Country**
   - **Result:** Country Z shows the highest potential for growth based on average revenue and user count.
   - **Insight:** Targeted investments in Country Z could unlock significant revenue potential.

#### **19. Gender Device Preference**
   - **Result:** Female users prefer mobile devices, while male users show a stronger preference for Smart TVs.
   - **Insight:** Device-specific content delivery could enhance user experiences.

#### **20. Peak Join Dates**
   - **Result:** Most users joined in December, indicating a spike in holiday subscriptions.
   - **Insight:** Seasonal campaigns during holidays could capitalize on this trend.

---

### Repository Structure

1. **SQL Queries:**
   - `netflix_analysis1_queries.sql`: Contains all the queries used in the project for analysis 1.

2. **Query Results:**
   - CSV files for each query, organized sequentially (e.g., `query_1.csv`, `query_2.csv`) in the analsyis1 subfolder.

3. **Dataset:**
   - Original dataset file: `Netflix_Userbase.csv`.

4. **Documentation:**
   - `README.md`: Overview of the project, queries, and key findings.

---

### How to Use

1. Clone the repository to access the dataset, queries, and results.
2. Use the SQL queries with your database system to replicate the analysis.
3. Review the CSV files to explore query results and insights.


