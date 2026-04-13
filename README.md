 Online Retail Data Analysis Project

 Project Overview

This project analyzes real-world online retail transaction data using SQL, Excel, and Power BI. The objective is to clean raw data, extract meaningful insights, and build an interactive dashboard to support data-driven business decisions.

---

Tools & Technologies

- SQL (SQL Server) → Data cleaning and transformation
- Microsoft Excel → Data validation and preliminary analysis
- Power BI → Data visualization and dashboard creation

---

Project Structure

Retail-Sales-Analysis/
│
├── Data/
│   └── online_retail.csv
│
├── SQL/
│   └── data_cleaning.sql
│
├── Excel/
│   └── online_retail_cleaned_data.xlsx
│
├── PowerBI/
│   ├── online_retail_dashboard.pbix
│   └── dashboard.png
│
└── README.md

---

Data Cleaning (SQL)

The dataset was cleaned using SQL with the following steps:

- Removed invalid numeric values using "TRY_CAST"
- Converted data types:
  - Quantity → INT
  - UnitPrice → DECIMAL
  - InvoiceDate → DATETIME
- Removed invalid or missing Customer IDs
- Identified and removed duplicate records using "ROW_NUMBER()"
- Filtered out invalid entries:
  - Negative or zero Quantity
  - Negative or zero UnitPrice

---

Analysis Performed

- Total Sales Calculation
- Sales by Country
- Top-Selling Products
- Monthly Sales Trend Analysis
- Customer-level insights

---

 Power BI Dashboard

Below is the interactive dashboard created using Power BI:

"Dashboard Preview" (PowerBI/dashboard.png)

---
 Key Insights

- A small number of countries contribute to the majority of revenue
- Top-performing products drive a significant portion of total sales
- Sales show seasonal patterns with peaks in specific months
- Data cleaning improved overall data accuracy and reliability

---

How to Use

1. Execute "data_cleaning.sql" in SQL Server to clean raw data
2. Use the cleaned dataset in Excel for validation and analysis
3. Open "online_retail_dashboard.pbix" in Power BI to explore the dashboard

---

Author

Aradhana Yadav

- Skilled in SQL, Excel, Power BI
- Aspiring Data Analyst

---

Note

This project demonstrates an end-to-end data analysis workflow:

Data Cleaning → Data Analysis → Data Visualization
