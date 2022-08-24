/* Write your T-SQL query statement below */
select customer_number from (select customer_number, row_number() over (order by count(distinct order_number) desc) rn from orders 
group by customer_number
) a
where rn = 1