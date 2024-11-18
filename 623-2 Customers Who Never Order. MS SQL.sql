/* Write your T-SQL query statement below */
SELECT
    name AS Customers
FROM
    Customers C
    LEFT JOIN
        Orders
    ON C.id = customerId
WHERE
    customerId IS NULL;