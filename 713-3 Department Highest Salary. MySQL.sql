# Write your MySQL query statement below
WITH Max_salaries AS(
SELECT
    departmentId,
    MAX(salary) max_salary
FROM
    Employee
GROUP BY
    departmentId
)

SELECT
    DISTINCT D.name AS Department,
    E.name AS Employee,
    salary AS Salary
FROM
    Employee E
    JOIN
        Department D
    ON departmentId = D.id
        JOIN
            Max_salaries M
        ON salary = max_salary ANd E.departmentId=M.departmentId;