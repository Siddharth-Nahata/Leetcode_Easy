/* Write your T-SQL query statement below */
with cte as(
    select salary,dense_rank() over (order by salary desc) as rank
    from Employee
    )
select isnull((select distinct salary
from cte 
where rank = 2),null)as SecondHighestSalary