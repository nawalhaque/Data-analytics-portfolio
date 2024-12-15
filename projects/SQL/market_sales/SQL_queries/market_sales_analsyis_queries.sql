-- Query 1: Total Revenue Insights
-- Calculate the total revenue across all branches and cities. 
-- Use window functions to calculate the percentage contribution of each branch/city to the overall revenue.

SELECT city, branch, SUM(total_amount) * 100.0 / SUM(SUM(total_amount)) OVER () AS branch_contribution_percent, SUM(total_amount) as total_branch_rev, SUM(SUM(total_amount)) OVER () AS total_revenue_all_branches 
from supermarket_sales ss 
group by city, branch 
ORDER BY branch_contribution_percent DESC;

-- Query 2: Branch Performance
-- Rank branches by total revenue and average transaction value.
-- Use RANK() or DENSE_RANK() to assign rankings.
SELECT 	branch, 
		sum(total_amount) as total_branch_rev, 
		avg(total_amount) as avg_transaction,
		RANK() over (ORDER BY SUM(total_amount) DESC) AS revenue_rank
from supermarket_sales ss 
group by branch;

-- Query 3: Top Product Lines
-- Identify the top-performing product lines by revenue and quantity sold.
-- Use GROUP BY and calculate percentage contribution to overall revenue.
SELECT product_line, 
	sum(quantity) as quantity_sold, 
	sum(total_amount) as total_product_rev,
	rank() over (ORDER by sum(total_amount) desc) as rev_rank,
	rank() over (order by sum(quantity) desc) as quantity_rank
FROM supermarket_sales ss 
group by product_line 
ORDER BY total_product_rev desc;

-- Query 4: Customer Type Analysis
-- Compare the average spending, total revenue, and transaction count for "Normal" vs. "Member" customers.
SELECT customer_type, avg(total_amount) as avg_spending, sum(total_amount) as total_rev, count(*) as transaction_count
FROM supermarket_sales ss 
group by customer_type;

-- Query 5: Best-Selling Products by Branch
-- Find the most popular product line in each branch based on revenue or quantity sold.
-- Use ROW_NUMBER() to rank product lines within each branch.
with branchrank as (
SELECT branch, 
	product_line, 
	sum(quantity) as quantity_sold, 
	sum(total_amount) as total_product_rev,
	rank() over (PARTITION by branch ORDER by sum(total_amount) desc) as rev_rank
from supermarket_sales ss 
group by branch,product_line
)
SELECT branch, product_line, quantity_sold, total_product_rev
from branchrank
where rev_rank = 1;

-- Query 6: Revenue Trends Across Cities
-- Analyze which city generates the highest revenue and has the highest average transaction value.
-- Use window functions to compare city performance against the overall average.

-- Query 7: Cumulative Revenue
-- Calculate cumulative revenue across transactions sorted by branch or product line.
-- Use SUM() as a window function for running totals.

-- Query 8: Anomalous Transactions
-- Identify transactions with unusually high revenue or quantity.
-- Use statistical thresholds like AVG + 3 * STDDEV to define outliers.

-- Query 9: Sales Contribution by Gender
-- Determine the percentage contribution of male vs. female customers to total revenue.
-- Use window functions or subqueries for percentage calculations.

-- Query 10: Branches With Most High-Value Transactions
-- Identify branches with the most transactions exceeding $500 (or a defined threshold).
-- Use conditional aggregation or filtering.

-- Query 11: Revenue Growth Potential
-- Project revenue growth if the tax rate were increased to 7%.
-- Calculate the new total revenue based on hypothetical tax rates.

-- Query 12: Customer Distribution
-- Analyze the distribution of customers by branch and city.
-- Group data by city and branch and count the number of transactions or unique customers.

-- Query 13: Average Quantity Sold by Product Line
-- Calculate the average quantity of items sold per transaction for each product line.

-- Query 14: Best Day for Sales
-- Identify the day (if timestamps exist) with the highest revenue or most transactions.
-- If no date column exists, create a simulated timestamp column to practice this.

-- Query 15: Pivot Table Analysis
-- Create a pivot table to display total revenue for each product line by branch.
-- Use CASE or manual aggregation if pivoting is not natively supported.
