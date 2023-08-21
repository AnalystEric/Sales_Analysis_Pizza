SELECT *
FROM Pizza_DB.pizza_sales

-- Q1: What is the total revenue throughout the year?
SELECT ROUND(SUM(total_price), 2) AS total_revenue
FROM Pizza_DB.pizza_sales

-- Q2: What is the total pizza sold throughout the year?
SELECT SUM(quantity) AS total_sold_pizza
FROM Pizza_DB.pizza_sales

-- Q3: What is the number of orders throughout the year?
SELECT COUNT(DISTINCT order_id) AS number_of_order
FROM Pizza_DB.pizza_sales

-- Q4: What is the average value per order?
SELECT ROUND(SUM(total_price) / COUNT(DISTINCT order_id),2) AS average_order_value
FROM Pizza_DB.pizza_sales

-- Q5: What is the total revenue for each month?
SELECT MONTH(order_date) AS month, ROUND(SUM(quantity*unit_price),2) AS total_rev_each_month 
FROM Pizza_DB.pizza_sales
GROUP BY MONTH(order_date)
ORDER BY 1

-- Q6: What is the number of orders each day throughout the year?
SELECT DAYNAME(order_date) AS day, COUNT(DISTINCT order_id) AS num_of_orders
FROM Pizza_DB.pizza_sales
GROUP BY DAYNAME(order_date)
ORDER BY 2 DESC

-- Q7: What is the percentage of revenue in each pizza category?
SELECT pizza_category, 
ROUND(SUM(total_price) / 
(SELECT SUM(total_price) AS total_revenue FROM Pizza_DB.pizza_sales) *100, 2) AS percentage_pizza_category
FROM Pizza_DB.pizza_sales
GROUP BY pizza_category

-- Q8: What is the percentage of revenue in each pizza size aside from 'XL' and 'XXL'?
SELECT pizza_size, ROUND((SUM(total_price)/ (SELECT SUM(total_price) FROM Pizza_DB.pizza_sales WHERE pizza_size NOT IN ('XL','XXL'))*100),2)
FROM Pizza_DB.pizza_sales
WHERE pizza_size NOT IN ('XL','XXL')
GROUP BY pizza_size
ORDER BY 1

-- Q9: What is the number of orders throughout the day in each hour?
SELECT HOUR(order_time) AS hour, COUNT(DISTINCT order_id) AS num_of_orders
FROM Pizza_DB.pizza_sales
GROUP BY HOUR(order_time)
ORDER BY 1

-- Q10: What is the most popular pizza by order throughout the year?
SELECT pizza_name
FROM Pizza_DB.pizza_sales
GROUP BY pizza_name
HAVING COUNT(DISTINCT order_id) = (SELECT COUNT(DISTINCT order_id) FROM Pizza_DB.pizza_sales GROUP BY pizza_name
ORDER BY 1 DESC
LIMIT 1)


-- Q11: What is the less popular pizza by order throughout the year?
SELECT pizza_name
FROM Pizza_DB.pizza_sales
GROUP BY pizza_name
HAVING COUNT(DISTINCT order_id) = (SELECT COUNT(DISTINCT order_id) FROM Pizza_DB.pizza_sales GROUP BY pizza_name
ORDER BY 1
LIMIT 1 ) 

-- Q12: What is the top 5 pizza by order throughout the year?
SELECT pizza_name, COUNT(order_id)
FROM Pizza_DB.pizza_sales
GROUP BY pizza_name
ORDER BY 2 DESC
LIMIT 5

-- Q13: What are the top 10 pizza orders, quantities, and revenue throughout the year?
SELECT pizza_name AS Top10_pizza, COUNT(order_id) AS total_order, SUM(quantity) AS total_pizza_sold, 
ROUND(SUM(total_price),2) AS total_revenue
FROM pizza_DB.pizza_sales
GROUP BY pizza_name
ORDER BY 2 DESC
LIMIT 10
