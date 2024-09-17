-- #1
SELECT
	productid,
	productname,
	unitprice
FROM
	products
WHERE
	unitprice = (
		SELECT
			MAX(unitprice)
		FROM
			products);