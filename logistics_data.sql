CREATE TABLE shipments (
    shipment_id INT PRIMARY KEY,
    region VARCHAR(50),
    order_date DATE,
    delivery_date DATE,
    expected_delivery_date DATE,
    logistics_provider VARCHAR(50),
    destination VARCHAR(50),
    shipping_cost DECIMAL(10,2),
    warehouse VARCHAR(50)
);

INSERT INTO shipments VALUES
(1,'South','2026-01-01','2026-01-05','2026-01-04','DHL','Kochi',450.00,'WH01'),
(2,'North','2026-01-03','2026-01-10','2026-01-08','FedEx','Delhi',700.00,'WH02'),
(3,'South','2026-01-05','2026-01-12','2026-01-10','DHL','Chennai',550.00,'WH01'),
(4,'West','2026-01-07','2026-01-11','2026-01-12','BlueDart','Mumbai',800.00,'WH03'),
(5,'North','2026-01-10','2026-01-18','2026-01-15','FedEx','Delhi',900.00,'WH02'),
(6,'East','2026-01-12','2026-01-20','2026-01-17','DHL','Kolkata',650.00,'WH04'),
(7,'West','2026-01-15','2026-01-19','2026-01-18','BlueDart','Pune',500.00,'WH03'),
(8,'South','2026-01-18','2026-01-25','2026-01-23','DHL','Bangalore',600.00,'WH01'),
(9,'North','2026-01-20','2026-01-27','2026-01-25','FedEx','Delhi',850.00,'WH02'),
(10,'East','2026-01-22','2026-01-26','2026-01-28','BlueDart','Kolkata',750.00,'WH04');

CREATE TABLE deliveries (
    delivery_id INT PRIMARY KEY,
    vehicle_id VARCHAR(20),
    delivery_date DATE,
    distance_km DECIMAL(10,2)
);

INSERT INTO deliveries VALUES
(1,'V101','2026-01-01',120),
(2,'V101','2026-01-02',150),
(3,'V101','2026-01-03',95),
(4,'V102','2026-01-04',180),
(5,'V102','2026-01-05',210),
(6,'V103','2026-01-06',75),
(7,'V103','2026-01-07',110),
(8,'V104','2026-01-08',250),
(9,'V104','2026-01-09',190),
(10,'V105','2026-01-10',130);
