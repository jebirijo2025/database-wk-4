USE sales_db; 
-- 1️ Show the total payment amount for each payment date
--    Display payment date and total amount, sorted by date (descending) and show only top 5 latest dates
SELECT paymentDate, SUM(amount) AS total_amount
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;

-- 2️  Find the average credit limit of each customer
--    Display customer name, country, and average credit limit, grouped by name and country
SELECT customerName, country, AVG(creditLimit) AS average_credit_limit
FROM customers
GROUP BY customerName, country;

-- 3️ Find the total price of products ordered
--    Display product code, quantity ordered, and total price for each product
--    Total price = quantityOrdered * priceEach
SELECT productCode, quantityOrdered, 
       (quantityOrdered * priceEach) AS total_price
FROM orderdetails
GROUP BY productCode, quantityOrdered;

-- 4️ Find the highest payment amount for each check number
--    Display check number and the highest amount paid for that check number
SELECT checkNumber, MAX(amount) AS highest_amount
FROM payments

GROUP BY checkNumber;
