/* Write your T-SQL query statement below */

SELECT A.Name as Customers
from Customers A LEFT JOIN Orders B 
on  a.Id = B.CustomerId
WHERE b.CustomerId is NULL