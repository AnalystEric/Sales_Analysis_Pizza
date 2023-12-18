# <p align="center">Pizza Sales Analysis</p> 
# Project Overview
Utilise Excel to design an interactive dashboard and MySQL to validate the accuracy of each KPI within the dashboard. 
The objective of this project is to assist a pizzeria in improving its business growth.
![Screenshot 2023-08-21 at 23 13 30](https://github.com/AnalystEric/Sales_Analysis---Pizza/assets/127030648/0f6ded24-107f-4697-ab34-2533b4212a6d)



**We will use SQL to gain quick insights before starting to create the dashboard.**

**SQL queries will be used to verify the accuracy of each KPI.**


# Built with
* Excel
* MySQL

# Excel skills used in this project
* ETL
* Power Pivot (for Data Cleaning)
* Lookup & Text & Aggregate & IF Formulas
* Pivot Table
* Pivot Chart
* Building KPIs

# SQL skills used in this project
* Import CSV file into MySQL and ensure the accuracy of the data types for each column.
* Gain quick insights before beginning to create the dashboard.
* Verify the accuracy of each KPI within the dashboard.
* Aggregate Functions
* Time Functions
* DISTINCT
* ORDER BY
* GROUP BY
* SUBQUERY
* LIMIT

# Data Overview
There is only one worksheet with 12 columns and 48621 records in Excel for this project.

    pizza_id -> A unique identifier for each type of pizza. This column helps distinguish different pizza options available for sale.

    order_id -> A unique identifier for each individual order. This column helps track and manage individual customer orders.

    pizza_name_id -> An identifier linking to the specific name of the pizza.

    quantity -> The number of units of the specific pizza ordered in a single order.

    order_date -> The date when the order was placed.

    order_time -> The time of day when the order was placed.

    unit_price -> The price of a single unit of the pizza.

    total_price -> The total price for the quantity of pizzas ordered, calculated by multiplying the unit price by the quantity.

    pizza_size -> The size category of the pizza, such as "Small," "Medium," or "Large."

    pizza_category -> The category to which the pizza belongs, like "Classic," "Supreme," "Veggie," etc.

    pizza_ingredients -> A description of the ingredients that make up the pizza's toppings.

    pizza_name -> The specific name or label given to the pizza option.

# Query Result

### 1. What is the total revenue throughout the year?

![Screenshot 2023-08-20 at 17 34 53](https://github.com/AnalystEric/Sales_Analysis---Pizza/assets/127030648/b7b485e4-a19c-449d-9701-9ecc6ddb9437)

### 2. What is the number of orders throughout the year?

![Screenshot 2023-08-20 at 17 35 31](https://github.com/AnalystEric/Sales_Analysis---Pizza/assets/127030648/89d72a38-b136-4ed5-b67b-7fe942a88bba)

### 3. What is the total pizza sold throughout the year?
![Screenshot 2023-08-20 at 17 35 20](https://github.com/AnalystEric/Sales_Analysis---Pizza/assets/127030648/f7a101cc-4aa0-4d6e-b5a1-0114126b4a87)

### 4. What is the average value per order?

![Screenshot 2023-08-20 at 17 35 07](https://github.com/AnalystEric/Sales_Analysis---Pizza/assets/127030648/49189741-bfbb-465f-9482-5b715e56bd21)

### 5. What is the total revenue for each month?

![Screenshot 2023-08-20 at 17 35 52](https://github.com/AnalystEric/Sales_Analysis---Pizza/assets/127030648/d549ab52-8004-4a05-b47b-9d7d7bc5b13f)

### 6. What is the number of orders each day throughout the year?

![Screenshot 2023-08-20 at 17 36 06](https://github.com/AnalystEric/Sales_Analysis---Pizza/assets/127030648/a65df8b9-b7b3-4dd5-9260-e2a3ff4f3f67)

### 7. What is the percentage of revenue in each pizza category?

![Screenshot 2023-08-20 at 17 36 37](https://github.com/AnalystEric/Sales_Analysis---Pizza/assets/127030648/f3aedb38-c273-4979-896a-36b8d58a996b)

### 8. What is the percentage of revenue in each pizza size aside from 'XL' and 'XXL'?

![Screenshot 2023-08-20 at 17 37 28](https://github.com/AnalystEric/Sales_Analysis---Pizza/assets/127030648/50dc5d40-495e-4467-9104-a4cca7983d4e)

### 9. What is the number of orders throughout the day in each hour?

![Screenshot 2023-08-20 at 17 36 20](https://github.com/AnalystEric/Sales_Analysis---Pizza/assets/127030648/902fce23-e2f9-45c3-8daf-f51d6eaff5b5)

### 10. What is the most popular pizza by order throughout the year?

![Screenshot 2023-08-20 at 17 38 12](https://github.com/AnalystEric/Sales_Analysis---Pizza/assets/127030648/d9f8ff6d-8117-4fec-9cb9-491a0536c0f6)

### 11. What is the less popular pizza by order throughout the year?

![Screenshot 2023-08-20 at 17 38 31](https://github.com/AnalystEric/Sales_Analysis---Pizza/assets/127030648/72db2bf6-455d-466f-930d-7ae7a277cb4e)

### 12. What is the top 5 pizza by order throughout the year?

![Screenshot 2023-08-20 at 17 39 34](https://github.com/AnalystEric/Sales_Analysis---Pizza/assets/127030648/3340f146-fc27-41b3-8136-b164be5dd780)

### 13.	What are the top 10 annual pizza orders, quantities, and revenue?


![Screenshot 2023-08-21 at 19 19 18](https://github.com/AnalystEric/Sales_Analysis---Pizza/assets/127030648/a3093a91-6619-4da3-bb51-52680a395813)








# Business Insight & Recommendations for the pizzeria
**Based on the given data, we will analyse the information to provide recommendations to the pizzeria to enhance its revenue and order numbers.**
![Daily Trending](https://github.com/AnalystEric/Sales_Analysis---Pizza/assets/127030648/6587ae5a-c9c6-475e-9569-b52b347250c5)
1. Since Friday, Saturday, and Sunday have higher order counts, the pizzeria can consider offering weekend-specific promotions or deals.
2. Monday and Tuesday have slightly lower order counts than the week's latter half. To attract more customers during these days, the pizzeria can consider introducing different promotions, where customers can get extra value for their orders. This could include special offers on family-sized pizzas, combo deals, or discounts on certain menu items during these days.


![Percentage of Revenue by Size](https://github.com/AnalystEric/Sales_Analysis---Pizza/assets/127030648/2fbfd32f-2b0b-4ddc-934e-ab4cf3f4b9a8)
It is evident that Large pizza occupies the highest proportion of the revenue. 
1. The pizzeria can create appealing combo deals that include a Regular or Medium pizza along with sides and beverages. Bundling items can increase the average order value and attract customers looking for complete meals.
2. The pizzeria can develop limited-time pizza creations available exclusively in Regular and Medium sizes. These can spark curiosity and attract customers who want to try something new.

![Hourly Trending](https://github.com/AnalystEric/Sales_Analysis---Pizza/assets/127030648/b34ebe51-a50b-484e-8243-ad6e952721e6)
We can observe that the peak time for pizza orders is from 12 to 1 pm and 17 to 19 pm.
1. During the hours between 2 PM and 4 PM, there is a slight decrease in order counts. To enhance revenue during these hours, the pizzeria can consider introducing snack-sized options, appetizers, or beverages. This can incentivize customers to place orders even outside of the traditional meal times.
2. For the hours with lower order counts, such as before 11 AM and after 10 PM, the pizzeria can offer incentives like 'buy one, get one free' deals or discounts. These measures can encourage customers to place orders during these off-peak times.

# Conclusion
Implementing these recommendations can help enhance the revenue and order volume of this pizzeria.
* Offer weekend-specific promotions or deals.
* Introduce different promotions on Monday and Tuesday, such as family-sized pizzas, combo deals, or discounts on certain menu items.
* Create appealing combo deals that include a Regular or Medium pizza along with sides and beverages.
* Develop limited-time pizza creations available exclusively in Regular and Medium sizes.
* Introduce snack-sized options, appetizers, or beverages between 2 PM and 4 PM.
* Offer incentives like 'buy one, get one free deals' or discounts during off-peak times.
