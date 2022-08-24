/* Write your T-SQL query statement below */
select a.player_id, a.first_login
from(
select player_id, event_date as first_login, row_number() over (partition by player_id order by event_date)as rn
from Activity)a
where rn=1