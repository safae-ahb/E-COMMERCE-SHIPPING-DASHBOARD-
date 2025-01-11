
# E-Commerce Shipping Analysis  

This repository provides an in-depth analysis of an e-commerce shipping dataset. The project leverages **Power BI** and **SQL** to extract meaningful insights and create interactive dashboards. The analysis aims to improve business decisions related to shipment performance, customer satisfaction, and product importance.  

---

## **Project Overview**  
This project focuses on identifying key patterns and trends in e-commerce shipping data, highlighting areas for operational improvement. SQL queries are utilized for data exploration and preprocessing, while Power BI visualizations bring the insights to life through interactive dashboards.  

---

## **Dataset Description**  
The dataset used in this project was sourced from Kaggle: EDA - E-commerce Shipping Data.
The dataset contains 12 attributes and 10,999 observations. Key features are:  

- **ID**: Unique identifier for each customer.  
- **Warehouse Block**: Warehouses are divided into blocks (A, B, C, D, E).  
- **Mode of Shipment**: Delivery methods include Ship, Flight, and Road.  
- **Customer Care Calls**: Number of customer calls regarding shipments.  
- **Customer Rating**: Ratings on a scale of 1 (worst) to 5 (best).  
- **Cost of the Product**: Price of the product in USD.  
- **Prior Purchases**: Number of previous purchases made by the customer.  
- **Product Importance**: Categories include Low, Medium, and High importance.  
- **Gender**: Gender of the customer (Male/Female).  
- **Discount Offered**: Discount applied to the product.  
- **Weight in Grams**: Weight of the product in grams.  
- **Reached on Time**: Target variable:  
  - `0`: Delivered on time.  
  - `1`: Delivery delayed.  

---

## **SQL Queries**  
SQL was used extensively to analyze and preprocess the data. Below are the key analyses performed:  

### **Distribution Analysis**  
- **Warehouse Blocks**:  

![Alt text](https://github.com/safae-ahb/E-COMMERCE-SHIPPING-DASHBOARD-/blob/e396c626e3cfac4256c39a3843592777fb01bbdc/1.PNG)

 Our dataset is clean and contains no duplicate entries. The warehouse block distribution reveals that Block F handles the highest volume of shipments (3,666), followed by Blocks D, A, C, and B, each with an equal share of 1,833 shipments.

- **Shipment Modes and Customer Ratings**:
 ![Alt text](https://github.com/safae-ahb/E-COMMERCE-SHIPPING-DASHBOARD-/blob/e396c626e3cfac4256c39a3843592777fb01bbdc/2.PNG)

Shipment Modes: The majority of shipments were made via Ship, with significantly fewer shipments handled by Flight and Road.
Customer Ratings: The ratings are fairly balanced across the five categories, indicating a mix of feedback from customers. This can help in understanding customer satisfaction trends and shipment performance

### **Performance Metrics**  
- **On-Time vs Delayed Deliveries** and- **Average Discounts by Delivery Status**:
  
![Alt text](https://github.com/safae-ahb/E-COMMERCE-SHIPPING-DASHBOARD-/blob/e396c626e3cfac4256c39a3843592777fb01bbdc/3.PNG)

On-time Deliveries (0): There are 4,436 products delivered on time, with an average discount of 5. On-time deliveries have lower discounts.
Late Deliveries (1): There are 6,563 products delivered late, with an average discount of 18. Late deliveries have higher discounts, likely to compensate customers for the delay.

- **Customer Rating**:  

![Alt text](https://github.com/safae-ahb/E-COMMERCE-SHIPPING-DASHBOARD-/blob/e396c626e3cfac4256c39a3843592777fb01bbdc/6.PNG)

There is a slight positive correlation between customer ratings and the average cost of products. As the customer rating increases, the average cost of the product tends to increase slightly as well.This suggests that customers may be willing to pay a premium for higher-rated products. Businesses could potentially leverage this by strategically pricing their products based on perceived value and expected customer ratings.

Warehouse D has the highest average customer rating (3), while the other warehouse blocks (F, C, B, and A) have lower average ratings (2). This suggests that Warehouse D may have better operational efficiency, leading to faster delivery times, fewer errors, and overall better customer satisfaction.

### **Warehouse & Shipping Delay Analysis **  

![Alt text](https://github.com/safae-ahb/E-COMMERCE-SHIPPING-DASHBOARD-/blob/e396c626e3cfac4256c39a3843592777fb01bbdc/4.PNG)

Warehouse Block B has the highest delay percentage, followed by blocks F and D. However, the differences in delay percentages between these blocks are relatively small.
Flight is the shipment mode with the most delays, followed by "Ship" and "Road." Similar to the warehouse blocks, the differences in delay percentages between these shipment modes are not substantial.

### **Correlation Between Discounts Delays and weight **  

![Alt text](https://github.com/safae-ahb/E-COMMERCE-SHIPPING-DASHBOARD-/blob/e396c626e3cfac4256c39a3843592777fb01bbdc/5.PNG)

When orders are not reached on time (Reached_on_Time_Y_N = 0), the average discount offered is significantly lower (5) compared to orders that are delivered on time (18). Additionally, the average weight of products in delayed orders is higher (4168 gms) than those delivered on time (3272 gms).
This suggests that lower discounts and heavier products may be associated with a higher likelihood of shipping delays.

![Alt text](https://github.com/safae-ahb/E-COMMERCE-SHIPPING-DASHBOARD-/blob/e396c626e3cfac4256c39a3843592777fb01bbdc/7.PNG)

Flight has the highest delay percentage at 60.15%, followed by Ship (59.76%) and Road (58.81%).
While Flight has the highest delay percentage, the differences between the modes are relatively small.The analysis suggests that the choice of shipment mode may not have a significant impact on the likelihood of delays.
As the number of customer care calls increases, the delay percentage tends to decrease slightly.
The highest delay percentage (65.20%) is observed for orders with 2 customer care calls, while the lowest (51.63%) is for orders with 6 calls.
The decrease in delay percentage with increasing customer care calls may indicate that proactive communication with customers helps to resolve issues and prevent delays

For the full list of queries, refer to the **SQL Code** section in this repository.  

---

## **Power BI Dashboards**  

### E-commerce Dashboard Analysis

This repository provides the analysis of two distinct Power BI dashboards created for the E-commerce platform. Each dashboard focuses on different aspects of the business, offering valuable insights into the performance of shipping operations and overall company performance.

### Dashboard 1: Overall E-commerce Performance

![Alt text](https://github.com/safae-ahb/E-COMMERCE-SHIPPING-DASHBOARD-/blob/e396c626e3cfac4256c39a3843592777fb01bbdc/da-1.PNG)

This dashboard serves as a comprehensive overview of the company’s operational performance, including key metrics such as revenue, customer satisfaction, product importance, and customer service interactions.

**Key Tables:**

1. **Gender Distribution of Orders:**  
   This table visualizes the distribution of orders between male and female customers, providing insights into the gender breakdown of the customer base.

2. **Customer Rating by Product Importance:**  
   This table analyzes how customer ratings vary based on product importance. It explores whether customers rate products differently depending on their level of importance.

3. **Customer Rating Distribution:**  
   This table shows the distribution of customer ratings, with the majority of ratings being 3 or higher, indicating a generally positive customer experience.

4. **Warehouse Block Performance:**  
   This table highlights the distribution of orders across different warehouse blocks. It allows us to assess warehouse performance and pinpoint potential areas of improvement.

5. **Product Cost vs. Weight:**  
   This table shows the relationship between product cost and weight, providing insights into how these two factors are correlated and their impact on shipping and inventory management.

### Dashboard 2: Shipping Performance Analysis

![Alt text](https://github.com/safae-ahb/E-COMMERCE-SHIPPING-DASHBOARD-/blob/e396c626e3cfac4256c39a3843592777fb01bbdc/dash-2.PNG)

This dashboard focuses specifically on the performance of shipping operations, including the delivery status, shipping modes, product costs, and customer service calls. It is designed to help identify areas for improvement in logistics, delivery performance, and customer satisfaction.

**Key Tables:**

1. **On-Time vs. Late Deliveries by Shipment Mode:**  
   This table breaks down the on-time and late deliveries by different shipment modes (e.g., Ship, Flight, Road). It highlights which shipment modes are performing well and which require further investigation.

2. **On-Time vs. Late Deliveries by Warehouse Block:**  
   This table presents the performance of each warehouse block in terms of on-time and late deliveries. It identifies which warehouse blocks are handling most of the delays and require operational improvements.

3. **Average Discount by Delivery Status:**  
   This table shows the average discount provided for products based on their delivery status (on-time or late). It helps analyze whether discounts are influencing the likelihood of late deliveries.

4. **Product Cost by Purchases and Delivery Status:**  
   This table provides insights into the relationship between product cost, order purchases, and delivery performance. It helps determine whether more expensive products are more prone to delays or whether product characteristics affect delivery times.

5. **Customer Calls by Gender:**  
   This table analyzes customer service calls based on customer gender. It identifies any gender-specific patterns in customer service interactions and highlights areas for potential improvement in customer service.

### Insights & Recommendations

**Overall Performance (Dashboard 1):**
- The company shows strong sales performance with high total revenue and a decent customer rating.
- However, customer care calls per order are high, which suggests potential operational issues.
- Customer satisfaction is generally positive, but the distribution of product importance and customer ratings can be optimized to improve overall performance.

**Shipping Performance (Dashboard 2):**
- The analysis reveals a significant issue with late deliveries, especially within certain shipment modes and warehouse blocks. This calls for deeper analysis and improvement strategies.
- High customer care calls are linked to late deliveries, emphasizing the need for better logistics and operational management.
- Further investigation into the relationship between product cost, delivery status, and discount strategies is needed to improve shipping efficiency and customer satisfaction.

### Conclusion

By analyzing the insights from both dashboards, we can identify actionable improvements across both overall performance and shipping operations. Addressing issues such as high late delivery rates, optimizing shipping modes, refining customer service processes, and improving warehouse management will enhance customer satisfaction, reduce costs, and increase overall business efficiency.

---

## **Tools Used**  
- **SQL**: Data querying and preprocessing.  
- **Power BI**: Interactive dashboards and data visualization.  
- **Dataset**: [Dataset Source](#) (Add a link to the dataset if available).  

---

## **How to Use**  
1. Clone the repository:  
   ```bash  
   git clone https://github.com/yourusername/ecommerce-shipping-analysis.git  
   ```  
2. Import the SQL scripts for database exploration.  
3. Open the Power BI file (.pbix) to explore the dashboards.  

---

## **Future Enhancements**  
1. Implementing predictive analytics to forecast delayed shipments.  
2. Developing a web application for real-time shipment tracking insights.  
3. Integrating additional datasets for deeper analysis.  

---

## **License**  
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.  

---

## **Contact**  
For any questions or feedback, please feel free to reach out:  
- **Email**: safae.ahb@gmail.com  

