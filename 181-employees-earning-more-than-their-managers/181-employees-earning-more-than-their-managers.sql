/* Write your T-SQL query statement below */
select E.name as Employee 
from Employee E inner join Employee M
on E.managerId = M.id
where E.Salary > M.Salary 
