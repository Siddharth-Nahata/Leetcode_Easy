/* Write your T-SQL query statement below */
SELECT
    w1.Id
FROM weather w1, weather w2
WHERE DATEDIFF(day,w1.RecordDate, w2.RecordDate) = -1
AND w1.Temperature > w2.Temperature;