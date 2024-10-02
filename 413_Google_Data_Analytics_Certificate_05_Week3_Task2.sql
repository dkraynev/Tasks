-- JOIN --

-- #1 just JOIN
SELECT
  O.*,
  W.warehouse_alias,
  W.state
FROM
  `inlaid-stratum-383516.warehouse_orders.orders` O
  JOIN
    `inlaid-stratum-383516.warehouse_orders.warehouse` W
  ON O.warehouse_id = W.warehouse_id;

SELECT
  O.*,
  W.warehouse_alias,
  W.state
FROM
  `inlaid-stratum-383516.warehouse_orders.orders` O
  JOIN
    `inlaid-stratum-383516.warehouse_orders.warehouse` W
  ON O.warehouse_id = W.warehouse_id