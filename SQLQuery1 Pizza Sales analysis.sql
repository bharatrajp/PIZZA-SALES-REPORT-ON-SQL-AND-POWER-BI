select * from pizza_sales;

select sum (total_price) AS Total_Revenue
from pizza_sales;


select sum(total_price)/count(distinct order_id) as Average_order_values
from pizza_sales;


select sum(quantity) as Total_pizza_sold
from pizza_sales;

select count(distinct order_id) As total_orders
from pizza_sales;

select CAST(sum(quantity) as decimal(10,2))/ 
 CAST(count(distinct order_id) as decimal (10,2))
 as Average_Pizzas_Per_order
 from pizza_sales;

 select DATENAME(DW,order_date) as order_day,count(distinct order_id)
 as Total_orders
 from pizza_sales
 group by DATENAME(DW, order_date);

 select DATENAME(month, order_date) as Month_Name, count(distinct order_id)
 as Total_Sales
 from pizza_sales
 group by DATENAME(MONTH,order_date);


 Select pizza_category, sum(total_price)*100/
(select sum(total_price) from pizza_sales) as Percentage_total_sales
 from pizza_sales 
 group by pizza_category;

 select Top 5 pizza_name,  sum(total_price)as Total_Revenue
 from pizza_sales
 group by pizza_name
 order by total_Revenue desc;



  select Top 5 pizza_name,  sum(total_price)as Total_Revenue
 from pizza_sales
 group by pizza_name
 order by total_Revenue ASC;

  select Top 5 pizza_name,  sum(quantity)as Total_quantity
 from pizza_sales
 group by pizza_name
 order by total_quantity desc;

  select Top 5 pizza_name,  sum(quantity)as Total_quantity
 from pizza_sales
 group by pizza_name
 order by total_quantity asc;