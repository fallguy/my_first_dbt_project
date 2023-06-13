SELECT
    DATE(o.OrderDate) AS date,
    SUM(od.UnitPrice * od.Quantity) AS total_sales
FROM
    northwind.orders o
JOIN
    northwind.order_details od ON o.OrderId = od.OrderId
GROUP BY
    date
