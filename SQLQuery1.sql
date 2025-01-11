use Ecommerce;

select * from ESD;

-- Checking for Duplicates Values:
Select ID, count(*)
from ESD
group by ID
having count(*)>1

--Analyze the distribution of warehouse blocks:

SELECT Warehouse_block, COUNT(*) AS BlockCount
FROM ESD
GROUP BY Warehouse_block
ORDER BY BlockCount DESC;

--Shipment Mode Distribution

SELECT Mode_of_Shipment, COUNT(*) AS ShipmentCount
FROM ESD
GROUP BY Mode_of_Shipment
ORDER BY ShipmentCount DESC;

--Customer Rating Distribution

SELECT Customer_rating, COUNT(*) AS RatingCount
FROM ESD
GROUP BY Customer_rating
ORDER BY Customer_rating;

--Product Importance

SELECT Product_importance, COUNT(*) AS ImportanceCount
FROM ESD
GROUP BY Product_importance
ORDER BY ImportanceCount DESC;

 --Gender Distribution

SELECT Gender, COUNT(*) AS GenderCount
FROM ESD
GROUP BY Gender;

 --On-Time vs. Late Deliveries

SELECT Reached_on_Time_Y_N, COUNT(*) AS DeliveryCount
FROM ESD
GROUP BY Reached_on_Time_Y_N;

--Average Discount by Delivery Status

SELECT 
    Reached_on_Time_Y_N, 
    AVG(Discount_offered) AS AvgDiscount
FROM ESD
GROUP BY Reached_on_Time_Y_N;

--Average Product Cost by Delivery Status

SELECT 
    Reached_on_Time_Y_N, 
    AVG(Cost_of_the_Product) AS AvgCost
FROM ESD
GROUP BY Reached_on_Time_Y_N;

 --High-Risk Warehouse Blocks

SELECT 
    Warehouse_block, 
    SUM(CASE WHEN Reached_on_Time_Y_N = 'Y' THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS DelayPercentage
FROM ESD
GROUP BY Warehouse_block
ORDER BY DelayPercentage DESC;

 --Shipment Mode with Most Delays

SELECT 
    Mode_of_Shipment, 
    SUM(CASE WHEN Reached_on_Time_Y_N = 'Y' THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS DelayPercentage
FROM ESD
GROUP BY Mode_of_Shipment
ORDER BY DelayPercentage DESC;

--Correlation Between Discounts and Delays

SELECT 
    Reached_on_Time_Y_N,
    AVG(Discount_offered) AS AvgDiscount,
    AVG(Cost_of_the_Product) AS AvgCost,
    AVG(Weight_in_gms) AS AvgWeight
FROM ESD
GROUP BY Reached_on_Time_Y_N;

--Cost vs. Rating Analysis
--Understand if more expensive products are rated higher.

SELECT 
    Customer_rating,
    AVG(Cost_of_the_Product) AS AvgCost
FROM ESD
GROUP BY Customer_rating
ORDER BY Customer_rating;

    SUM(CASE WHEN Reached_on_Time_Y_N = 'Y' THEN 1 ELSE 0 END) AS DelayedCount,


--Average Customer Rating by Warehouse

SELECT 
    Warehouse_block,
    AVG(Customer_rating) AS AvgRating
FROM ESD
GROUP BY Warehouse_block
ORDER BY AvgRating DESC;


--Delays by Shipment Mode

SELECT 
    Mode_of_Shipment,
    COUNT(*) AS TotalShipments,
    SUM(CASE WHEN Reached_on_Time_Y_N = 1 THEN 1 ELSE 0 END) AS DelayedShipments,
    SUM(CASE WHEN Reached_on_Time_Y_N = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS DelayPercentage
FROM ESD
GROUP BY Mode_of_Shipment
ORDER BY DelayPercentage DESC;

--Correlation Between Customer Care Calls and Delays

SELECT 
    Customer_care_calls,
    COUNT(*) AS TotalOrders,
    SUM(CASE WHEN Reached_on_Time_Y_N = 1 THEN 1 ELSE 0 END) AS DelayedOrders,
    SUM(CASE WHEN Reached_on_Time_Y_N = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS DelayPercentage
FROM ESD
GROUP BY Customer_care_calls
ORDER BY Customer_care_calls;

--Impact of Prior Purchases on Delivery Time

SELECT 
    Prior_purchases,
    COUNT(*) AS TotalOrders,
    SUM(CASE WHEN Reached_on_Time_Y_N = 1 THEN 1 ELSE 0 END) AS DelayedOrders,
    SUM(CASE WHEN Reached_on_Time_Y_N = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS DelayPercentage
FROM ESD
GROUP BY Prior_purchases
ORDER BY Prior_purchases;

--Combining Shipment Mode and Product Importance

SELECT 
    Mode_of_Shipment,
    Product_importance,
    COUNT(*) AS TotalShipments,
    SUM(CASE WHEN Reached_on_Time_Y_N = 1 THEN 1 ELSE 0 END) AS DelayedShipments,
    SUM(CASE WHEN Reached_on_Time_Y_N = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS DelayPercentage
FROM ESD
GROUP BY Mode_of_Shipment, Product_importance
ORDER BY DelayPercentage DESC;