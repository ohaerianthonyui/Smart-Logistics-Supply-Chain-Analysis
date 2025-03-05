# Smart-Logistics-Supply-Chain-Analysis


### Introduction
The logistics industry plays a crucial role in managing the flow of goods and services, ensuring that products are delivered efficiently from suppliers to consumers. In today's highly competitive and complex supply chain environment, 
it is essential for companies to optimize their operations, reduce delays, and improve customer satisfaction. 
This dataset captures critical variables that influence logistics processes, such as inventory levels, shipment status, waiting time, and asset utilization across different locations.
The data collected includes key attributes such as latitude, longitude, temperature, humidity, and traffic status, which can help in understanding the broader context in which logistics operations take place. 
Furthermore, variables like user transaction amounts and purchase frequency offer insight into the demand for various assets and how these affect logistical efficiency.

This dataset serves as an invaluable resource to analyze and optimize supply chain processes, reduce inefficiencies, and predict demand and delays, ultimately improving the overall performance of the logistics network.

### Problem Statement

Despite the advancements in logistics and supply chain technologies, companies still face challenges in streamlining operations and ensuring timely deliveries. 
These challenges can result in delays, inefficient asset utilization, and inventory imbalances, which ultimately affect both customer satisfaction and operational costs.
The primary issue is that logistics delays, fluctuating inventory levels, and unpredictable waiting times can severely disrupt the flow of goods, leading to increased costs and a negative impact on business performance. 
In many cases, factors such as traffic congestion, asset idle times, and inaccurate demand forecasts contribute to these disruptions, making it difficult to optimize supply chain operations.
Therefore, understanding the relationship between inventory levels, waiting times, and other environmental factors like traffic status and temperature is critical to improving logistics efficiency and ensuring a smooth, uninterrupted flow of goods across the network.

#### Objectives
The questions to be asked for this analysis as follows:
-- Total User Transaction Amount

-- Average User Purchase Frequeny

-- Total Waiting Time

-- Total Asset Utilization

-- What is the average inventory level for each asset?

-- Which asset has the highest inventory level?

-- What is the correlation between inventory level and waiting time?

-- What is the Total shipment delay across assets?

--What is the average asset utilization over time?

-- What is the average user transaction amount per asset?

--- Which assets have the highest purchase frequency?

--Is there any relationship between purchase frequency and shipment status?

-- What is the average waiting time based on traffic status?

-- How does traffic impact inventory levels?

-- Which assets experience the longest waiting times?


### Tools and Methodology

Power BI

Power BI was used for data visualization and reporting.
SQL Database 

SQL was used for querying and retrieving relevant data from the database. The data was  filtered, aggregated, and manipulated using SQL queries to extract key information for analysis, such as:
Average waiting times per asset or region.
Logistics delays by inventory levels or asset type.
Traffic status impacts on delivery times.
Queries were optimized for performance to handle large datasets and ensure efficient data extraction for Power BI.





#### **Findings**

1. **Total User Transaction Amount**:  
   The total user transaction amount across all assets is **$299,000**, indicating a significant volume of financial transactions within the logistics network.

2. **Average User Purchase Frequency**:  
   The average user purchase frequency is **5.51**, reflecting the frequency with which customers engage in transactions across the dataset.

3. **Total Waiting Time**:  
   The total accumulated waiting time across all assets is **35,000 hours**, highlighting the significant delays experienced in the logistics process.

4. **Total Asset Utilization**:  
   The total asset utilization is recorded at **79,600 hours**, suggesting that there is room for optimizing asset deployment and ensuring more efficient use of assets.

5. **Inventory Levels**:  
   - **Highest Inventory Level**: The asset with the highest recorded inventory level is **Truck_8**, with a maximum of **500** units.  
   - **Lowest Inventory Level**: Conversely, the asset with the lowest inventory level is **Truck_9**, with an inventory level of **486** units.

6. **Average Inventory Levels**:  
   - **Highest Average Inventory Level**: The asset with the highest average inventory level is **Truck_5**, with an average of **322.86** units.  
   - **Lowest Average Inventory Level**: The asset with the lowest average inventory level is **Truck_3**, with an average of **280.66** units.

7. **Correlation Between Inventory Level and Waiting Time**:  
   The correlation between **inventory level** and **waiting time** is very low, at **-0.02033**. This suggests there is almost no linear relationship between the two variables, indicating that factors other than inventory levels may be contributing to waiting times.

8. **Average Waiting Time by Asset**:  
   - The asset with the highest average waiting time is **Truck_1**, with an average waiting time of **37.02 hours**.  
   - The asset with the lowest average waiting time is **Truck_10**, with an average waiting time of **32.30 hours**.

9. **Traffic Status vs. Inventory Level**:  
   - Assets in **heavy traffic status** have an average inventory level of **305.30** units.  
   - Assets in **clear traffic status** have a slightly higher average inventory level of **299.88** units.  
   - Assets in **detour traffic status** have the lowest average inventory level of **290.00** units.

10. **Traffic Status vs. Waiting Time**:  
    - The average waiting time for shipments in **clear traffic status** is **35.54 hours**.  
    - For **detour traffic status**, the average waiting time is slightly lower at **35.31 hours**.  
    - **Heavy traffic status** had the lowest average waiting time at **34.32 hours**.

11. **Shipment Status and Delays**:  
    - An average of **2,000 user purchases** were delayed.  
    - **1,800 purchases** were successfully delivered, and **1,700 purchases** are currently in transit.

12. **Logistics Delays by Asset**:  
    - The asset with the highest **total logistics delay** is **Truck_8**, indicating that this asset experiences the most significant delays.  
    - The asset with the least **logistics delay** is **Truck_1**.

13. **Transaction Amount by Asset**:  
    - **Truck_4** recorded the highest **user transaction amount**, indicating it is involved in the highest volume of financial transactions.  
    - The asset with the lowest transaction amount is **Truck_3**.

14. **Purchase Frequency by Asset**:  
    - **Truck_4** has the highest **user purchase frequency**, suggesting that it is involved in more frequent transactions compared to other assets.  
    - The asset with the lowest **purchase frequency** is **Truck_1**.

---

### **Conclusion**

The analysis of the logistics data reveals key insights into the performance and operations of different assets in the logistics network. While the overall **transaction volume** is considerable, with a **total transaction amount of $299,000**, several operational inefficiencies need to be addressed:

- **Inventory levels** do not seem to correlate strongly with **waiting times**, which suggests that external factors such as **traffic conditions** or **shipment status** may be more significant contributors to delays.
- 
- **Truck_8** appears to be an outlier, experiencing both the highest **inventory levels** and **logistics delays**, suggesting potential inefficiencies in asset deployment or management.
- 
- **Traffic status** has a moderate impact on both **inventory levels** and **waiting times**, but the variation across traffic conditions (e.g., **clear**, **detour**, **heavy traffic**) suggests that improving traffic management could help optimize logistics operations.

Moreover, **Truck_4** stands out with the highest **user transaction amount** and **purchase frequency**, making it a critical asset in the network. Meanwhile, assets like **Truck_1** and **Truck_3** are performing poorly, with **Truck_1** experiencing the lowest **purchase frequency** and the highest **waiting time**.

---

### **Recommendations**

Based on the findings, the following recommendations are made to improve supply chain operations:

1. **Optimize Asset Utilization**:
   - Investigate the reasons behind the high **logistics delays** for **Truck_8**. This asset may need to be reallocated or reassigned to improve **asset utilization** and reduce waiting times.
   - **Truck_4** has high **transaction volume** and should be prioritized for maintenance and efficiency optimization to ensure it continues performing at its peak.

2. **Improve Traffic Management**:
   - Traffic congestion appears to have a significant effect on **waiting times** and **inventory levels**. Consider **upgrading routing algorithms** or utilizing real-time **traffic data** to avoid heavy traffic routes and minimize delays.
   - **Clear traffic routes** tend to result in lower waiting times, so enhancing the tracking and routing of assets to avoid **detour** or **heavy traffic** conditions can improve delivery efficiency.

3. **Investigate Waiting Time Delays**:
   - Given the **low correlation** between **inventory levels** and **waiting times**, it is essential to explore other contributing factors, such as **traffic conditions** or **shipment status**. A deeper analysis of these external factors may uncover actionable insights for reducing delays.
   - Assets like **Truck_1** with high **waiting times** should be further analyzed to identify operational inefficiencies or logistical bottlenecks.

4. **Focus on Demand Forecasting**:
   - With a high average **purchase frequency** observed for **Truck_4**, enhancing **demand forecasting** for high-frequency assets may allow for better planning and optimized inventory management. 
   - Implement more robust **forecasting models** using historical data to predict demand more accurately and align inventory levels accordingly.

5. **Monitor Logistics Delays and Transaction Amounts**:
   - Continuous monitoring of **logistics delays** and **transaction amounts** will be critical to ensure that assets are operating at their full potential. Delayed shipments and fluctuations in transaction volumes could signal underlying issues that need to be addressed.

6. **Review Asset-Specific Performance**:
   - Assets such as **Truck_3**, with lower transaction amounts and frequencies, may not be utilized as effectively. Assess whether it is cost-effective to retain or reassign such assets to improve operational efficiency across the logistics network.

By implementing these recommendations, the logistics network can optimize asset utilization, reduce delays, and ultimately improve overall efficiency and customer satisfaction.

--- 

This structured analysis, conclusion, and set of actionable recommendations should provide the necessary insights for decision-makers to improve the performance of the logistics operation based on the data findings.
