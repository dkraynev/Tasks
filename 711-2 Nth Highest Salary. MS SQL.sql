CREATE FUNCTION getNthHighestSalary(@N INT) RETURNS INT AS
BEGIN
    RETURN (
        /* Write your T-SQL query statement below. */
       SELECT
            salary
        FROM (
            SELECT
                DISTINCT salary, DENSE_RANK() OVER (ORDER BY salary DESC) AS rn
            FROM
                Employee
        ) AS RankedSalaries
        WHERE
            rn = @N
    );
END