--                                        DATA  ANALYSIS
SELECT * FROM customers;

-- Count of customers
SELECT COUNT(*) AS total_customers
FROM customers;
-- total of 122 customers are there.

-- Check for missing values
SELECT 
SUM(CASE WHEN customerNumber IS NULL THEN 1 ELSE 0 END) AS null_customerNumber,
SUM(CASE WHEN customerName IS NULL THEN 1 ELSE 0 END) AS null_customerName,
SUM(CASE WHEN contactLastName IS NULL THEN 1 ELSE 0 END) AS null_contactLastName,
SUM(CASE WHEN contactFirstName IS NULL THEN 1 ELSE 0 END) AS null_contactFirstName,
SUM(CASE WHEN phone IS NULL THEN 1 ELSE 0 END) AS null_phone,
SUM(CASE WHEN addressLine1 IS NULL THEN 1 ELSE 0 END) AS null_addressLine1,
SUM(CASE WHEN addressLine2 IS NULL THEN 1 ELSE 0 END) AS null_addressLine2,
SUM(CASE WHEN city IS NULL THEN 1 ELSE 0 END) AS null_city,
SUM(CASE WHEN state IS NULL THEN 1 ELSE 0 END) AS null_state,
SUM(CASE WHEN postalCode IS NULL THEN 1 ELSE 0 END) AS null_postalCode,
SUM(CASE WHEN country IS NULL THEN 1 ELSE 0 END) AS null_country,
SUM(CASE WHEN salesRepEmployeeNumber IS NULL THEN 1 ELSE 0 END) AS null_salesRepEmployeeNumber,
SUM(CASE WHEN creditLimit IS NULL THEN 1 ELSE 0 END) AS null_creditLimit
FROM customers;
-- There are 100 nulls in 'addressLine2' column, 73 nulls in 'state' column, 7 nulls in 'postalCode' 
-- column and 22 nulls in 'salesRepEmployeeNumber' column.

-- Check for outliers 
SELECT customerNumber, COUNT(*)
FROM customers
GROUP BY customerNumber
HAVING COUNT(*) > 1;
-- There are no outliers.

-- Count of employees
SELECT COUNT(*) AS total_employees
FROM employees;
-- There are a total of 23 employees. 

-- Check for missing values
SELECT 
SUM(CASE WHEN employeeNumber IS NULL THEN 1 ELSE 0 END) AS null_employeeNumber,
SUM(CASE WHEN lastName IS NULL THEN 1 ELSE 0 END) AS null_lastName,
SUM(CASE WHEN firstName IS NULL THEN 1 ELSE 0 END) AS null_firstName,
SUM(CASE WHEN extension IS NULL THEN 1 ELSE 0 END) AS null_extension,
SUM(CASE WHEN email IS NULL THEN 1 ELSE 0 END) AS null_email,
SUM(CASE WHEN officeCode IS NULL THEN 1 ELSE 0 END) AS null_officeCode,
SUM(CASE WHEN reportsTo IS NULL THEN 1 ELSE 0 END) AS null_reportsTo,
SUM(CASE WHEN jobTitle IS NULL THEN 1 ELSE 0 END) AS null_jobTitle
FROM employees;
-- There is only 1 null in 'reportsTo' column.

-- Check for outliers
SELECT employeeNumber, COUNT(*) AS duplicate_count
FROM employees
GROUP BY employeeNumber
HAVING COUNT(*) > 1;
-- There are no outliers. 

-- Count of offices
SELECT COUNT(*) AS total_offices
FROM offices;
-- There are total 7 offices.

-- Check for missing values
SELECT 
SUM(CASE WHEN officeCode IS NULL THEN 1 ELSE 0 END) AS null_officeCode,
SUM(CASE WHEN city IS NULL THEN 1 ELSE 0 END) AS null_city,
SUM(CASE WHEN phone IS NULL THEN 1 ELSE 0 END) AS null_phone,
SUM(CASE WHEN addressLine1 IS NULL THEN 1 ELSE 0 END) AS null_addressLine1,
SUM(CASE WHEN addressLine2 IS NULL THEN 1 ELSE 0 END) AS null_addressLine2,
SUM(CASE WHEN state IS NULL THEN 1 ELSE 0 END) AS null_state,
SUM(CASE WHEN country IS NULL THEN 1 ELSE 0 END) AS null_country,
SUM(CASE WHEN postalCode IS NULL THEN 1 ELSE 0 END) AS null_postalCode,
SUM(CASE WHEN territory IS NULL THEN 1 ELSE 0 END) AS null_territory
FROM offices;
-- There are 2 nulls in 'addressLine2' column and 3 nulls in 'state' column.

-- Check for outliers
SELECT officeCode, COUNT(*) AS duplicate_count
FROM offices
GROUP BY officeCode
HAVING COUNT(*) > 1;
-- There are no outliers.

-- Count of order details
SELECT COUNT(*) AS total_order_details
FROM orderdetails;
-- There are total 2996 order details.

-- Check for missing values
SELECT 
SUM(CASE WHEN orderNumber IS NULL THEN 1 ELSE 0 END) AS null_orderNumber,
SUM(CASE WHEN productCode IS NULL THEN 1 ELSE 0 END) AS null_productCode,
SUM(CASE WHEN quantityOrdered IS NULL THEN 1 ELSE 0 END) AS null_quantityOrdered,
SUM(CASE WHEN priceEach IS NULL THEN 1 ELSE 0 END) AS null_priceEach,
SUM(CASE WHEN orderLineNumber IS NULL THEN 1 ELSE 0 END) AS null_orderLineNumber
FROM orderdetails;
-- There are no nulls in 'orderdetails' table.

-- Check for outliers
SELECT orderNumber, productCode, COUNT(*) AS duplicate_count
FROM orderdetails
GROUP BY orderNumber, productCode
HAVING COUNT(*) > 1;
-- There are no outliers. 

-- Count of orders
SELECT COUNT(*) AS total_orders
FROM orders;
-- There are total 326 orders.

-- Check for missing values
SELECT 
SUM(CASE WHEN orderNumber IS NULL THEN 1 ELSE 0 END) AS null_orderNumber,
SUM(CASE WHEN orderDate IS NULL THEN 1 ELSE 0 END) AS null_orderDate,
SUM(CASE WHEN requiredDate IS NULL THEN 1 ELSE 0 END) AS null_requiredDate,
SUM(CASE WHEN shippedDate IS NULL THEN 1 ELSE 0 END) AS null_shippedDate,
SUM(CASE WHEN status IS NULL THEN 1 ELSE 0 END) AS null_status,
SUM(CASE WHEN comments IS NULL THEN 1 ELSE 0 END) AS null_comments,
SUM(CASE WHEN customerNumber IS NULL THEN 1 ELSE 0 END) AS null_customerNumber
FROM orders;
-- There are 14 nulls in 'shippedDate' column and 246 nulls in 'comments' column. 

-- Check for outliers
SELECT orderNumber, COUNT(*) AS duplicate_count
FROM orders
GROUP BY orderNumber
HAVING COUNT(*) > 1;
-- There are no outliers. 

-- Count of payments
SELECT COUNT(*) AS total_payments
FROM payments;

-- Check for null values
SELECT 
SUM(CASE WHEN customerNumber IS NULL THEN 1 ELSE 0 END) AS null_customerNumber,
SUM(CASE WHEN checkNumber IS NULL THEN 1 ELSE 0 END) AS null_checkNumber,
SUM(CASE WHEN paymentDate IS NULL THEN 1 ELSE 0 END) AS null_paymentDate,
SUM(CASE WHEN amount IS NULL THEN 1 ELSE 0 END) AS null_amount
FROM payments;
-- There are no null values in 'payments' table.

-- Check for outliers 
SELECT customerNumber,checkNumber,COUNT(*)
FROM payments
GROUP BY customerNumber,checkNumber
HAVING COUNT(*) > 1;
-- There are no outliers.

-- Count of product lines
SELECT COUNT(*) AS total_product_lines
FROM productLines;
-- There are total 7 product lines.

-- Check for null values
SELECT 
SUM(CASE WHEN productLine IS NULL THEN 1 ELSE 0 END) AS null_productLine,
SUM(CASE WHEN textDescription IS NULL THEN 1 ELSE 0 END) AS null_textDescription,
SUM(CASE WHEN productLine IS NULL THEN 1 ELSE 0 END) AS null_productLine,
SUM(CASE WHEN productLine IS NULL THEN 1 ELSE 0 END) AS null_productLine
FROM productLines;
-- There are no null values in 'productLines' table.

-- Check for outliers
SELECT productLine,COUNT(*)
FROM productLines
GROUP BY productLine
HAVING COUNT(*) > 1;
-- There are no outliers.

-- Count of products
SELECT COUNT(*) AS total_products
FROM products;
-- There are total 110 products.

-- Check for null values
SELECT 
SUM(CASE WHEN productCode IS NULL THEN 1 ELSE 0 END) AS null_productCode,
SUM(CASE WHEN productName IS NULL THEN 1 ELSE 0 END) AS null_productName,
SUM(CASE WHEN productLine IS NULL THEN 1 ELSE 0 END) AS null_productLine,
SUM(CASE WHEN productScale IS NULL THEN 1 ELSE 0 END) AS null_productScale,
SUM(CASE WHEN productVendor IS NULL THEN 1 ELSE 0 END) AS null_productVendor,
SUM(CASE WHEN productDescription IS NULL THEN 1 ELSE 0 END) AS null_productDescription,
SUM(CASE WHEN quantityInStock IS NULL THEN 1 ELSE 0 END) AS null_quantityInStock,
SUM(CASE WHEN warehouseCode IS NULL THEN 1 ELSE 0 END) AS null_warehouseCode,
SUM(CASE WHEN buyPrice IS NULL THEN 1 ELSE 0 END) AS null_buyPrice,
SUM(CASE WHEN MSRP IS NULL THEN 1 ELSE 0 END) AS null_MSRP
FROM products;
-- There are no nulls in 'products' table.

-- Check for outlierss
SELECT productCode, COUNT(*) AS duplicate_count
FROM products
GROUP BY productCode
HAVING COUNT(*) > 1;
-- There are no outliers.

-- Count of warehouses
SELECT COUNT(*) AS total_warehouses
FROM warehouses;
-- There are total 4 warehouses.

-- Check for null values
SELECT 
SUM(CASE WHEN warehouseCode IS NULL THEN 1 ELSE 0 END) AS null_warehouseCode,
SUM(CASE WHEN warehouseName IS NULL THEN 1 ELSE 0 END) AS null_warehouseName,
SUM(CASE WHEN warehousePctCap IS NULL THEN 1 ELSE 0 END) AS null_warehousePctCap
FROM warehouses;
-- There are no nulls in 'warehouse' table.

-- Check for outliers
SELECT warehouseCode, COUNT(*) AS duplicate_count
FROM warehouses
GROUP BY warehouseCode
HAVING COUNT(*) > 1;
-- There are no outliers.

-- Top selling items
SELECT 
    productCode, 
    productName, 
    SUM(quantityOrdered) AS total_quantity_ordered
FROM orderdetails
GROUP BY productCode
ORDER BY total_quantity_ordered DESC
LIMIT 10;

-- Analyze correlation between price and sales volume
SELECT 
    p.productCode,
    p.productName,
    p.buyPrice,
    SUM(od.quantityOrdered) AS total_quantity_ordered
FROM products p
JOIN orderdetails od ON p.productCode = od.productCode
GROUP BY p.productCode
ORDER BY total_quantity_ordered DESC;

-- mean of buy price and total quantity ordered
SELECT 
    AVG(buyPrice) AS mean_buy_price,
    AVG(total_quantity_ordered) AS mean_total_quantity_ordered
FROM (
    SELECT 
        p.buyPrice,
        SUM(od.quantityOrdered) AS total_quantity_ordered
    FROM products p
    JOIN orderdetails od ON p.productCode = od.productCode
    GROUP BY p.buyPrice
) AS subquery;
-- The mean of buy_price is $54.348224 and mean of total quantity ordered is $986.1308

-- covariance between buy price and total quantity ordered
SELECT 
    SUM((buyPrice - mean_buy_price) * (total_quantity_ordered - mean_total_quantity_ordered)) AS covariance
FROM (
    SELECT 
        p.buyPrice,
        SUM(od.quantityOrdered) AS total_quantity_ordered
    FROM products p
    JOIN orderdetails od ON p.productCode = od.productCode
    GROUP BY p.buyPrice
) AS subquery, 
(
    SELECT 
        AVG(buyPrice) AS mean_buy_price,
        AVG(total_quantity_ordered) AS mean_total_quantity_ordered
    FROM (
        SELECT 
            p.buyPrice,
            SUM(od.quantityOrdered) AS total_quantity_ordered
        FROM products p
        JOIN orderdetails od ON p.productCode = od.productCode
        GROUP BY p.buyPrice
    ) AS subquery
) AS mean_values;
-- The covariance is 43703.1248598144

-- Calculate standard deviation of buy price and total quantity ordered
SELECT 
    SQRT(
        SUM(POW((buyPrice - mean_buy_price), 2)) * SUM(POW((total_quantity_ordered - mean_total_quantity_ordered), 2))
    ) AS product_of_standard_deviations
FROM (
    SELECT 
        p.buyPrice,
        SUM(od.quantityOrdered) AS total_quantity_ordered
    FROM products p
    JOIN orderdetails od ON p.productCode = od.productCode
    GROUP BY p.buyPrice
) AS subquery, 
(
    SELECT 
        AVG(buyPrice) AS mean_buy_price,
        AVG(total_quantity_ordered) AS mean_total_quantity_ordered
    FROM (
        SELECT 
            p.buyPrice,
            SUM(od.quantityOrdered) AS total_quantity_ordered
        FROM products p
        JOIN orderdetails od ON p.productCode = od.productCode
        GROUP BY p.buyPrice
    ) AS subquery
) AS mean_values;
-- The standard deviation is 474402.44537598244

-- the cost of goods sold (COGS) for a specific period
SELECT SUM(priceEach * quantityOrdered) AS COGS
FROM orderdetails
JOIN orders ON orderdetails.orderNumber = orders.orderNumber
WHERE orders.orderDate BETWEEN 'start_date' AND 'end_date';

-- the average inventory value for the same period
SELECT AVG(quantityInStock) AS average_inventory_value
FROM products;
-- Average inventory value is $5046.6455 

-- the Inventory Turnover Ratio
SELECT 
    (SELECT SUM(priceEach * quantityOrdered) 
     FROM orderdetails
     JOIN orders ON orderdetails.orderNumber = orders.orderNumber
     WHERE orders.orderDate BETWEEN 'start_date' AND 'end_date') 
    / (SELECT AVG(quantityInStock) 
     FROM products) AS inventory_turnover_ratio;

-- the average inventory value
SELECT AVG(quantityInStock) AS average_inventory_value
FROM products;

-- assuming Inventory Holding Cost Percentage as a parameter
SET @inventory_holding_cost_percentage = 25; 

-- Inventory Holding Cost
SELECT 
    (SELECT AVG(quantityInStock) AS average_inventory_value
     FROM products) 
    * (@inventory_holding_cost_percentage / 100) AS inventory_holding_cost;

-- The inventory holding cost is $1261.66

/* FINDINGS:- 
1.The mean buy price is calculated as $54.348224, and the mean total quantity ordered is
calculated as $986.1308. These represent the average buy price of products and the average total quantity 
ordered. 
2. The standard deviation of the inventory value is calculated as 474402.44537598244. 
The standard deviation measures the dispersion of values from the mean.A higher standard deviation 
suggests greater variability in inventory value.
3. The covariance between the buy price and total 
quantity ordered is calculated as 43703.1248598144. Covariance measures the degree to which two variables
change together. In this case, it indicates the relationship between the buy price of products and the 
total quantity ordered.
4.The average inventory value is calculated as $5046.6455. This indicates the average value of the
inventory held by the company over a specific period.
5. The inventory holding cost is calculated as $1261.66. This represents the estimated cost associated 
with storing and managing inventory, including expenses such as storage space, insurance, depreciation 
and obsolescence.
*/

/*
                                             CONCLUSION
						  Based on the provided metrics, it's evident that the inventory holding cost is 
relatively low compared to the average inventory value and standard deviation. This suggests that the 
company may be effectivelymanaging its inventory to minimize holding costs. However, the covariance 
between the buy price and total quantity ordered indicates a relationship between these variables.
                          The high standard deviation of the inventory value suggests significant 
variability in inventory levels, which may pose challenges in inventory management and forecasting. 
It's essential for the company to monitor and analyze inventory trends to optimize inventory levels and 
reduce holding costs further.
                          In conclusion, while the company appears to be managing its inventory holding 
costs effectively, there is room for improvement in optimizing inventory levels and forecasting to 
minimize costs further and enhance operational efficiency. Implementing robust inventory management 
strategies, leveraging data analytics for demand forecasting, and optimizing supply chain processes can 
help address these challenges and drive business success.
*/
--                                              * ANALYSIS COMPLETED *