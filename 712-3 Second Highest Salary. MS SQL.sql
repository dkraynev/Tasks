WITH RankedSalaries AS (
    SELECT
        salary,
        DENSE_RANK() OVER (ORDER BY salary DESC) AS rnk
    FROM Employee
)
SELECT
    (
        SELECT TOP 1 salary
        FROM RankedSalaries
        WHERE rnk = 2
    ) AS SecondHighestSalary;