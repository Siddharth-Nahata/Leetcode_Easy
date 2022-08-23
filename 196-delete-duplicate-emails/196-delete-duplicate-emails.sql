/* 
 Please write a DELETE statement and DO NOT write a SELECT statement.
 Write your T-SQL query statement below
 */
 
delete from Person
where id in(
select id
from(
select *, row_number() over(partition by email order by id) as rnum
from person ) as a
where rnum > 1 )