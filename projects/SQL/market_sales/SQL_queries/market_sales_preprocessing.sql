-- # Use the correct database
USE `market sales`;

-- # Preview the first 10 rows of the table to understand its structure and data
SELECT * FROM supermarket_sales LIMIT 10;

-- # Standardize column names for consistency and ease of use
ALTER TABLE supermarket_sales
CHANGE COLUMN `Gender` gender VARCHAR(50), -- Rename Gender column
CHANGE COLUMN `Invoice ID` invoice_id VARCHAR(50), -- Rename Invoice ID column
CHANGE COLUMN `Branch` branch VARCHAR(50), -- Rename Branch column
CHANGE COLUMN `City` city VARCHAR(50), -- Rename City column
CHANGE COLUMN `customer_type` customer_type VARCHAR(50), -- Rename Customer Type column
CHANGE COLUMN `Product line` product_line VARCHAR(50), -- Rename Product Line column
CHANGE COLUMN `Unit price` unit_price DOUBLE, -- Rename Unit Price column
CHANGE COLUMN `Quantity` quantity INT, -- Rename Quantity column
CHANGE COLUMN `Tax 5%` tax_5 DOUBLE; -- Rename Tax 5% column

-- Validate and Fix the Tax 5% Column
-- Identify rows where the Tax 5% column is incorrect
SELECT *,
       ROUND(unit_price * quantity * 0.05, 3) AS calculated_tax
FROM supermarket_sales
WHERE ROUND(unit_price * quantity * 0.05, 2) <> tax_5;

-- Fix the Tax 5% column for incorrect rows
UPDATE supermarket_sales
SET tax_5 = ROUND(unit_price * quantity * 0.05, 3)
WHERE ROUND(unit_price * quantity * 0.05, 3) <> ROUND(tax_5, 3);

-- Validate the Tax 5% column after corrections
SELECT * 
FROM supermarket_sales 
LIMIT 60;

-- # Step 2: Validate and Fix the Total Amount Column
-- Identify rows where the Total Amount column is incorrect
SELECT *,
       ROUND((unit_price * quantity) + tax_5, 3) AS calculated_total_amount
FROM supermarket_sales
WHERE ROUND(total_amount, 3) <> ROUND((unit_price * quantity) + tax_5, 3);

-- Fix the Total Amount column for incorrect rows
UPDATE supermarket_sales
SET total_amount = ROUND((unit_price * quantity) + tax_5, 3)
WHERE ROUND(total_amount, 3) <> ROUND((unit_price * quantity) + tax_5, 3);

-- Validate the Total Amount column after corrections
SELECT COUNT(*) AS discrepancies
FROM supermarket_sales
WHERE ROUND(total_amount, 3) <> ROUND((unit_price * quantity) + tax_5, 3);

-- # Add a new column to store the total amount (including tax) for each transaction
ALTER TABLE supermarket_sales
ADD COLUMN total_amount DOUBLE;

-- # Populate the total_amount column by calculating the total transaction value
UPDATE supermarket_sales
SET total_amount = (unit_price * quantity) + tax_5;

-- # Normalize Gender column values to ensure consistency
UPDATE supermarket_sales
SET gender = 'Male'
WHERE LOWER(gender) IN ('male', 'm');

UPDATE supermarket_sales
SET gender = 'Female'
WHERE LOWER(gender) IN ('female', 'f');

-- # Normalize Customer Type column values to ensure consistency
UPDATE supermarket_sales
SET customer_type = 'Normal'
WHERE LOWER(customer_type) IN ('normal', 'norm');

UPDATE supermarket_sales
SET customer_type = 'Member'
WHERE LOWER(customer_type) IN ('member', 'memb');

-- # Check for outliers in Quantity and Unit Price using statistical thresholds
SELECT *
FROM supermarket_sales
WHERE quantity > (SELECT AVG(quantity) + 3 * STDDEV(quantity) FROM supermarket_sales)
   OR unit_price > (SELECT AVG(unit_price) + 3 * STDDEV(unit_price) FROM supermarket_sales);

-- # Create an index on invoice_id for faster filtering and joins
CREATE INDEX idx_invoice_id ON supermarket_sales (invoice_id);

-- # Create an index on city for faster filtering
CREATE INDEX idx_city ON supermarket_sales (city);

-- # Create an index on customer_type for optimized queries involving customer types
CREATE INDEX idx_customer_type ON supermarket_sales (customer_type);

-- # Create an index on product_line for faster querying of product categories
CREATE INDEX idx_product_line ON supermarket_sales (product_line);

-- # Preview the first 10 rows again to confirm the changes after preprocessing
SELECT * FROM supermarket_sales LIMIT 10;
