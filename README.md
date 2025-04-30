# Alt Mobility – Data Analyst Assignment  
**Author**: Atrikesh Mishra
**Role**: Data Analyst Intern Candidate  
**Tools Used**: Python, SQLite, Pandas, SQL, Power BI (reference)

---

##  Project Structure

This project analyzes EV leasing operational data using SQL and Python (SQLite), based on `customer_orders.csv` and `payments.csv`.

---

##  Objectives

- Analyze order and sales trends  
- Understand customer behavior and retention  
- Identify payment issues and success rates  
- Create a joined order-payment report  
- Visualize customer retention (cohort analysis)

---

##  Datasets

1. `customer_orders.csv`  
   Contains order-related info: `order_id`, `customer_id`, `order_date`, `order_amount`, etc.

2. `payments.csv`  
   Contains payment-related info: `payment_id`, `order_id`, `payment_date`, `payment_status`, etc.

---

##  SQL Queries Performed

### **1. Order and Sales Analysis**
- Count orders by status
- Monthly sales trend
- Average order value by status

### **2. Customer Analysis**
- Repeat customer count
- Total vs repeat customers
- Monthly active customers

### **3. Payment Status Analysis**
- Count of payments by status
- Payment failure rate
- Success rate by payment method

### **4. Joined Order-Payment Report**
- Combined customer order and payment data for full visibility

---

##  Retention Visualization (Power BI Style)

Performed **cohort analysis** using:
- First order month (cohort)
- Mode of payment used
- visualization showing retention trends over time
