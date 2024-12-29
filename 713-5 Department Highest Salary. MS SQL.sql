/* Write your T-SQL query statement below */
WITH Max_salary AS(
SELECT
    departmentID,
    MAX(salary) AS max_salary
FROM
    Employee
GROUP BY
    departmentID
)

SELECT
    D.name AS Department,
    E.name AS Employee,
    salary AS Salary
FROM
    Employee E
    JOIN
        Department D
    ON E.departmentID = D.id
    JOIN
        Max_salary M
    ON E.departmentID = M.departmentID AND salary = max_salary;