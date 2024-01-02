-- 1581. Customer Who Visited but Did Not Make Any Transactions

-- visit_id is the column with unique values for this table.
-- This table contains information about the customers who visited the mall.

-- transaction_id is column with unique values for this table.
-- This table contains information about the transactions made during the visit_id.

-- Write a solution to find the IDs of the users who visited without making any transactions and the number of times they made these types of visits.

-- Return the result table sorted in any order.

SELECT
    customer_id,
    COUNT(customer_id) AS count_no_trans
FROM visits v LEFT JOIN transactions t ON t.visit_id = v.visit_id
WHERE transaction_id IS NULL
GROUP BY customer_id