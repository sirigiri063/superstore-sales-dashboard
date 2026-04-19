select SUM("Sales") as total_Sales
from superstore_data sd 

select SUM("Profit") as total_Profit
from superstore_data sd 

select count("Order ID") as total_Orders
from superstore_data sd 

select "Category", SUM("Sales") 
from superstore_data sd 
group by sd."Category" 

select "Region", SUM("Profit") as total_Profit
from superstore_data sd 
group by "Region" 
order by SUM("Profit") desc;

SELECT *
FROM superstore_data
WHERE "Region" = 'West';

select "Product Name", SUM("Profit") 
from superstore_data sd 
group by "Product Name" 
having SUM("Profit") < 0; 

select "Product Name", SUM("Sales") as total_Sales
from superstore_data sd 
group by "Product Name" 
order by total_sales 
limit 5;

select "Category", SUM("Sales") as total_sales
from superstore_data sd 
where "Region" = 'West'
group by "Category";

select *
from superstore_data sd 
where "Sales" > 1000

SELECT *
FROM superstore_data
WHERE "Region" = 'West'
AND "Profit" < 0;

SELECT *
FROM superstore_data
WHERE "Category" IN ('Furniture', 'Technology');



