use walmart_db;
select * from walmart;
select count(*) from walmart;
select distinct payment_method from walmart;
-- 1.What is the total revenue generated overall?
select sum(unit_price * quantity) as totalrevenue
from walmart; 
select round(sum(unit_price * quantity),2) as totalrevenue
from walmart; 
-- 2.Which category generates the highest revenue and which the lowest?
select distinct category from walmart;
-- all the category with there revenue
select category,round(sum(unit_price * quantity),2)  as total_revenue
from walmart
group by category
order by total_revenue desc;
-- highest revenue
select category,round(sum(unit_price * quantity),2)  as total_revenue
from walmart
group by category
order by total_revenue desc
limit 1;
-- lowest revenue
select category,round(sum(unit_price * quantity),2) as total_revenue
from walmart
group by category
order by total_revenue asc
limit 1;


-- 3.Which city/branch contributes the most/less to total sales?
-- all the sales from each city
select city,round(sum(unit_price * quantity),2)as total_revenue
from walmart
group by city
order by total_revenue desc;
-- most sales contributing city
select city,round(sum(unit_price * quantity),2) as total_revenue
from walmart
group by city 
order by total_revenue desc
limit 1;
-- less sales contributing city
select city, round(sum(unit_price * quantity),2) as total_revenue
from walmart
group by city 
order by total_revenue asc
limit 1;

-- 4.What is the average transaction value (basket size)?
select round(avg(unit_price * quantity),2) as average_transaction_value 
from walmart;

-- 5.What is the month-over-month or day-over-day sales trend?
select 
    date_format(date, '%y-%m') as month,
    round(sum(unit_price * quantity),2) as sales,
    round(sum(unit_price * quantity) ,2)- lag(round(sum(unit_price * quantity),2))
    over (order by date_format(date, '%y-%m')) as mom_change
from walmart
group by date_format(date, '%y-%m');
-- 6.find different payment method and number of transaction,number of quantity sold?
select distinct payment_method ,
count(*) as number_pf_transaction,
sum(quantity) as number_of_quantity_sold
 from walmart
 group by payment_method
 order by number_of_quantity_sold;
-- 7.identify the highest rated category in each branch,displaying the branch,category average rating?
select Branch,category,round(avg(rating),2)as average_rating
from walmart
group by Branch,category
order by Branch ,category asc ;
-- 8.identify the businest day for each branch  based on the number of transactions
select date from walmart;
select 
Branch,DAYNAME (STR_TO_DATE(date,'%d/%m/%y')) as day_name,
count(*) as number_of_transaction
from walmart
group by Branch,day_name
order by Branch,number_of_transaction desc;

select *
from(
  select
   Branch,DAYNAME (STR_TO_DATE(date,'%d/%m/%y')) as day_name,
   count(*) as number_of_transaction,
   rank() over(
   partition by branch
   order by count(*) desc
   ) as rnk
from walmart
group by Branch,day_name
) as ranked
where rnk=1;
-- 9.Calculate the total quantity of items sold per payment method. List payment_method and total_quantity.
select payment_method ,sum(quantity) as total_quantity_of_items
from walmart
group by payment_method;
-- 10.determine the average,minimum,and maximum rating of category for each city.
-- list the city,average_rating,minimum_rating,maximum_rating.
select city, 
category,
min(rating) as Minimum_Rating,
max(rating) as Maximum_rating,
round(avg(rating),2)as Average_Rating
from walmart
group by city,category
order by city,category;

-- 11.Calculate the total profit for each category by considering total_profit as (unit_price * quantity * profit_margin).
-- List category and total_profit,ordered from highest to lowest profit.
select category,
round(sum(unit_price * quantity * profit_margin),2) as total_profit
from walmart
group by category 
order by total_profit desc;
 -- 12.Determine the most common payment method for each Branch.
-- Display Branch and the preferred_payment_method.
with cte as(
  select
     Branch,
	 payment_method,
	 count(*) as total_trans,
     rank() over(
	   partition by Branch
       order by count(*) desc
	 ) as rnk
from walmart
group by Branch,payment_method
)
select * from cte
where rnk =1;
-- 13.Categorize sales into 3 group MORNING, AFTERNOON, EVENING
--  Find out each of the shift and number of sales.
 select 
  case 
     when hour(time) < 12 then 'morning'
     when hour(time) between 12 and 17 then 'afternoon'
     else 'evening'
  end as day_time,
  count(*) as total_transaction
from walmart
group by day_time;
-- sales showing according to branch and shiftes
select Branch,
  case 
     when hour(time) < 12 then 'morning'
     when hour(time) between 12 and 17 then 'afternoon'
     else 'evening'
  end as day_time,
  count(*) as total_transaction
from walmart
group by Branch,day_time
order by Branch,total_transaction desc;
-- 14.  Identify 5 branch with highest decrese ratio in
-- revevenue compare to last year (current year 2023 and last year 2022)
WITH revenue_2022 AS (
    SELECT 
        branch,
        SUM(total) AS revenue
    FROM walmart
    WHERE YEAR(STR_TO_DATE(date, '%d/%m/%Y')) = 2022
    GROUP BY branch
),
revenue_2023 AS (
    SELECT 
        branch,
        SUM(total) AS revenue
    FROM walmart
    WHERE YEAR(STR_TO_DATE(date, '%d/%m/%Y')) = 2023
    GROUP BY branch
)
SELECT 
    r2022.branch,
    r2022.revenue AS last_year_revenue,
    r2023.revenue AS current_year_revenue,
    ROUND(((r2022.revenue - r2023.revenue) / r2022.revenue) * 100, 2) AS revenue_decrease_ratio
FROM revenue_2022 AS r2022
JOIN revenue_2023 AS r2023 ON r2022.branch = r2023.branch
WHERE r2022.revenue > r2023.revenue
ORDER BY revenue_decrease_ratio DESC
LIMIT 5;





-- 6.Which day of the week sees the highest sales?
-- 7.What hour of the day has peak sales activity?
