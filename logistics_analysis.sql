SELECT region, AVG(DATEDIFF(delivery_date, order_date)) AS avg_delivery_days FROM shipments GROUP BY region HAVING AVG(DATEDIFF(delivery_date, order_date)) > 5;

SELECT logistics_provider, ROUND(SUM(CASE WHEN delivery_date > expected_delivery_date THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS late_delivery_percentage FROM shipments GROUP BY logistics_provider;

SELECT destination, SUM(shipping_cost) AS total_shipping_cost FROM shipments GROUP BY destination ORDER BY total_shipping_cost DESC LIMIT 5;

SELECT warehouse, COUNT(*) AS total_shipments FROM shipments GROUP BY warehouse ORDER BY total_shipments DESC;

SELECT vehicle_id, COUNT(*) AS total_deliveries, AVG(distance_km) AS avg_delivery_distance FROM deliveries GROUP BY vehicle_id HAVING COUNT(*) > 20;
