-- 197. Rising Temperature

-- id is the column with unique values for this table.
-- This table contains information about the temperature on a certain day.

-- Write a solution to find all dates' Id with higher temperatures compared to its previous dates (yesterday).

-- Return the result table in any order.

SELECT
    w1.id
FROM weather w1, weather w2
WHERE w1.temperature > w2.temperature AND DATEDIFF(w1.recordDate, w2.recordDate) = 1