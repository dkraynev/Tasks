-- JOIN --

-- #1 just JOIN
SELECT 
 E.name AS employee_name,
 E.role employee_role,
 D.name AS department_name
FROM
  `inlaid-stratum-383516.employee_data.departments` D
  INNER JOIN
    `inlaid-stratum-383516.employee_data.employees` E
  ON E.department_id = D.department_id;


-- #2 LEFT JOIN
SELECT 
 E.name AS employee_name,
 E.role employee_role,
 D.name AS department_name
FROM
  `inlaid-stratum-383516.employee_data.employees` E
  LEFT JOIN
    `inlaid-stratum-383516.employee_data.departments` D
  ON E.department_id = D.department_id;


-- #3 RIGTH JOIN
SELECT 
 E.name AS employee_name,
 E.role employee_role,
 D.name AS department_name
FROM
  `inlaid-stratum-383516.employee_data.employees` E
  RIGHT JOIN
    `inlaid-stratum-383516.employee_data.departments` D
  ON E.department_id = D.department_id;


-- #4 FULL OUTER JOIN
SELECT 
 E.name AS employee_name,
 E.role employee_role,
 D.name AS department_name
FROM
  `inlaid-stratum-383516.employee_data.employees` E
  FULL OUTER JOIN
    `inlaid-stratum-383516.employee_data.departments` D
  ON E.department_id = D.department_id;
