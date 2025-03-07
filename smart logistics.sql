---- Preview the table structure

select * from smart_logistics


--- 1. Objective: Analyze Inventory Levels

-- What is the average inventory level for each asset?

---- Average inventory level for each asset
SELECT Asset_ID, AVG(Inventory_Level) AS Avg_Inventory_Level
FROM smart_logistics
GROUP BY Asset_ID;

--Which asset has the highest inventory level?

---- Asset with the highest inventory level
SELECT Asset_ID, MAX(Inventory_Level) AS Max_Inventory_Level
FROM smart_logistics
GROUP BY Asset_ID
ORDER BY Max_Inventory_Level DESC
OFFSET 1 ROWS
FETCH NEXT 1 ROWS ONLY;

--What is the correlation between inventory level and waiting time?
WITH stats AS (
    SELECT
        COUNT(*) AS n,
        SUM(CAST(Inventory_Level AS BIGINT)) AS sum_x,
        SUM(CAST(Waiting_Time AS BIGINT)) AS sum_y,
        SUM(CAST(Inventory_Level AS BIGINT) * CAST(Waiting_Time AS BIGINT)) AS sum_xy,
        SUM(CAST(Inventory_Level AS BIGINT) * CAST(Inventory_Level AS BIGINT)) AS sum_xx,
        SUM(CAST(Waiting_Time AS BIGINT) * CAST(Waiting_Time AS BIGINT)) AS sum_yy
    FROM smart_logistics
)
SELECT
    (n * sum_xy - sum_x * sum_y) /
    SQRT((n * sum_xx - sum_x * sum_x) * (n * sum_yy - sum_y * sum_y)) AS correlation_coefficient
FROM stats;



--- Analyze Shipment Performance

--- What is the Total shipment delay across assets?

-- Total shipment delay
SELECT Logistics_Delay, count(Logistics_Delay) AS Shipment_Delay
FROM smart_logistics
GROUP BY Logistics_Delay
 --- 0 is Yes, 1 is No


---  Objective: Asset Utilization

----What is the average asset utilization over time?
SELECT Asset_ID, AVG(Asset_Utilization) AS Avg_Utilization
FROM smart_logistics
GROUP BY Asset_ID;


---- Objective: Customer Behavior and Purchases

-- What is the average user transaction amount per asset?
SELECT Asset_ID, AVG(User_Transaction_Amount) AS Avg_Transaction_Amount
FROM smart_logistics
GROUP BY Asset_ID;

--- Which assets have the highest purchase frequency?
SELECT Asset_ID, COUNT(User_Purchase_Frequency) AS Purchase_Frequency
FROM smart_logistics
GROUP BY Asset_ID
ORDER BY Purchase_Frequency DESC

---Is there any relationship between purchase frequency and shipment status?
SELECT SUM(User_Purchase_Frequency)AS Total_Purchase_Freq, Shipment_Status
FROM smart_logistics
GROUP BY Shipment_Status


---- Objective: Analyze Traffic and Waiting Time---

--- What is the average waiting time based on traffic status?

SELECT Traffic_Status, AVG(Waiting_Time) AS Avg_Waiting_Time
FROM smart_logistics
GROUP BY Traffic_Status;


---- How does traffic impact inventory levels?

SELECT Traffic_Status, AVG(Inventory_Level) AS Avg_Inventory_Level
FROM smart_logistics
GROUP BY Traffic_Status;

---- Which assets experience the longest waiting times?

SELECT Asset_ID, AVG(Waiting_Time) AS AVG_Waiting_Time
FROM smart_logistics
GROUP BY Asset_ID
ORDER BY AVG_Waiting_Time DESC

