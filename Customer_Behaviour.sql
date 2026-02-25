create database customer_behaviour;
use customer_behaviour;
select * from customers;

select gender, sum(purchase_amount) as total_revenue from customers
group by gender;

select customer_id,purchase_amount from customers where discount_applied="yes" 
and purchase_amount>= (select avg(purchase_amount) from customers);

select item_purchased, round(avg(review_rating),2) as highest_review from customers
group by item_purchased  order by highest_review desc limit 5;

select shipping_type, round(Avg(purchase_amount),2) from customers where shipping_type in("Express","standard")
group by shipping_type;

select  subscription_status,count(customer_id),
sum(purchase_amount) as Total_revenue, round(avg(purchase_amount),2)as avg_spend from customers 
group by subscription_status order by total_revenue, avg_spend desc;

select item_purchased,round(100* sum(case when discount_applied="Yes" then 1 else 0 end)/count(*),2) as discount_rate
from customers group by item_purchased order by discount_rate desc limit 5;


With customer_type as(
select customer_id,previous_purchases,
case when previous_purchases=1 then "New"
	 when previous_purchases between 2 and 10 then "Returning"
     else "Loyal"
     end as Customer_segment
     from customers
)
select customer_segment,count(*) as "Number of customers" from customer_type
group by customer_segment;


with item_count as(
select category,item_purchased,count(customer_id) as total_orders,
ROW_NUMBER() over (partition by category order by count(customer_id ) desc ) as item_rank
from customers
group by category, item_purchased
)

select item_rank,category,item_purchased,total_orders from item_count 
where item_rank<=3;


select subscription_status,count(customer_id) as repeat_buyers 
from customers  where  previous_purchases> 5
group by subscription_status;

select age_group,sum(purchase_amount) as total_revenue 
from customers
group by age_group
order by total_revenue desc;






