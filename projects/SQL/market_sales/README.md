
# **Supermarket Sales SQL Analysis Project**

## **Overview**
This project explores the **Supermarket Sales Dataset** to derive meaningful insights using SQL. The dataset contains transaction details from multiple supermarket branches and provides a rich source for analyzing sales trends, customer behavior, and branch performance.

The project focuses on:
1. **Data Preprocessing and Cleaning**: Ensuring data accuracy and consistency.
2. **Comprehensive Analysis**: Using advanced SQL techniques such as window functions, Common Table Expressions (CTEs), ranking, and pivoting.
3. **Visualization and Insights**: Exporting results to structured CSV files for further analysis or visualization.

---

## **About the Dataset**
The **Supermarket Sales Dataset** contains a comprehensive overview of transactions, tracking details such as product categories, unit prices, quantities sold, and gross income. It includes customer demographics, such as gender, payment method, and membership type, making it ideal for analyzing sales trends, customer behavior, and revenue performance.

### **Key Fields**
- **Invoice ID**: Unique identifier for each transaction.
- **Branch**: Supermarket branch (`A`, `B`, or `C`).
- **City**: City where the branch is located.
- **Customer Type**: Customer membership status (`Member` or `Normal`).
- **Gender**: Customer's gender.
- **Product Line**: Product category (e.g., Groceries, Clothing).
- **Unit Price**: Price per unit.
- **Quantity**: Units purchased in a transaction.
- **Tax (5%)**: Calculated as 5% of the total before tax.
- **Total**: Final payment amount, including tax.
- **Payment**: Payment method (e.g., Cash, Credit Card).

---

## **Project Workflow**
1. **Preprocessing and Cleaning**: 
   - Cleaning tax and total amount columns.
   - Normalizing customer and gender data.
   - Creating indices for faster querying.

2. **SQL Analysis**:
   - Detailed branch and product line performance.
   - Customer behavior analysis.
   - Simulated timestamp analysis for sales trends.

3. **Results**:
   - Exported to CSV files with meaningful insights.

---

## **Preprocessing Steps**
The preprocessing SQL scripts are stored in `market_sales_preprocessing.sql`. Key steps include:
1. **Column Standardization**:
   - Renamed columns for consistency (e.g., `Gender` → `gender`).
2. **Validation and Fixes**:
   - Recalculated `tax_5` and `total_amount` for accuracy.
3. **Data Normalization**:
   - Standardized values for `gender` and `customer_type`.
4. **Index Creation**:
   - Created indices for `invoice_id`, `city`, `customer_type`, and `product_line`.

---

## **Analysis Queries**
The analysis SQL scripts are stored in `market_sales_analysis_queries.sql`. Key queries and their purposes:

### Query Highlights
1. **Total Branch Revenue**:
   - Calculate total revenue for each branch and its percentage contribution.

2. **Customer Distribution**:
   - Analyze transaction counts and unique customers by branch and city.

3. **Top Product Lines**:
   - Identify top-performing product lines by revenue and quantity.

4. **Customer Type Analysis**:
   - Compare spending behavior and revenue contribution of `Member` vs. `Normal` customers.

5. **Best-Selling Products by Branch**:
   - Find the most popular product line in each branch.

6. **Revenue Trends Across Cities**:
   - Compare city performance based on average transaction value and total revenue.

7. **Cumulative Revenue**:
   - Track cumulative revenue by branch, customer type, and product line.

8. **Top Percentile Transactions**:
   - Identify transactions in the top 10% for revenue or quantity.

9. **Sales Contribution by Gender**:
   - Determine gender-based revenue contribution.

10. **High-Value Transactions**:
    - Identify branches with the highest number of transactions exceeding $500.

11. **Revenue Growth Potential**:
    - Project revenue if the tax rate increases to 7%.

12. **Customer Distribution**:
    - Analyze customer count and transactions by branch and city.

13. **Average Quantity by Product Line**:
    - Calculate average quantities sold per transaction for each product line.

14. **Best Day for Sales**:
    - Simulate timestamps and identify the most profitable days.

15. **Pivot Table Analysis**:
    - Create a pivot table to display total revenue for each product line by branch.

---

## **Results**
All query outputs are stored as CSV files:

| Query Number | Query Description                     | Output File                     |
|--------------|---------------------------------------|----------------------------------|
| 1            | Total Branch Revenue                 | `query_1.csv`                   |
| 2            | Customer Distribution                | `query_2.csv`                   |
| 3            | Top Product Lines                    | `query_3.csv`                   |
| 4            | Customer Type Analysis               | `query_4.csv`                   |
| 5            | Best-Selling Products by Branch      | `query_5.csv`                   |
| 6            | Revenue Trends Across Cities         | `query_6.csv`                   |
| 7            | Cumulative Revenue                   | `query_7.csv`                   |
| 8            | Top Percentile Transactions          | `query_8.csv`                   |
| 9            | Sales Contribution by Gender         | `query_9.csv`                   |
| 10           | High-Value Transactions              | `query_10.csv`                  |
| 11           | Revenue Growth Potential             | `query_11.csv`                  |
| 12           | Customer Distribution                | `query_12.csv`                  |
| 13           | Average Quantity by Product Line     | `query_13.csv`                  |
| 14           | Best Day for Sales                   | `query_14.csv`                  |
| 15           | Pivot Table Analysis                 | `query_15.csv`                  |

---

## **How to Use**
1. **Run Preprocessing Queries**:
   - Execute `market_sales_preprocessing.sql` to clean and prepare the data.

2. **Run Analysis Queries**:
   - Execute `market_sales_analysis_queries.sql` to generate insights.

3. **Export Results**:
   - Results for each query are already stored as CSV files. Use these for further analysis or visualization.

---

## **Insights**
1. **Branch Performance**:
   - Branch C generates the highest revenue: $110,568.72.
   - Branch A and B contribute similarly, around $106,200 each.

2. **Product Line Performance**:
   - Health and Beauty is a consistent top performer across all branches.

3. **Customer Behavior**:
   - Members spend significantly more on average than Normal customers.

4. **Potential Tax Impact**:
   - Increasing the tax rate to 7% could grow total revenue by $23,966.78.

---

## **Conclusion**
This project demonstrates advanced SQL techniques for analyzing supermarket sales data. It highlights key trends in customer behavior, product performance, and branch contributions, offering actionable insights for business optimization.

Feel free to explore the scripts and CSV files to understand the analysis process in detail.

