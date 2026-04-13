📊 Online Retail Sales Analysis Project
Project Overview
This project analyzes real-world online retail transaction data to uncover meaningful business insights. It demonstrates a complete data analytics workflow — from raw data cleaning to interactive dashboard creation — using industry-standard tools.
🎯 Objectives
Clean and preprocess raw transactional data
Perform exploratory data analysis (EDA)
Generate actionable business insights
Build an interactive dashboard for decision-making
⚙️Tools & Technologies
SQL (SQL Server) → Data cleaning & transformation
Microsoft Excel → Data validation & preliminary analysis
Power BI → Data visualization & dashboard development
📂 Project Structure

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
│   └── online_retail_dashboard.pbix
│
├── Images/
│   └── dashboard.png
│
└── README.md
Data Cleaning Process (SQL)
The dataset was cleaned and transformed using SQL with the following steps:
Removed invalid and null values using TRY_CAST
Converted data types:
Quantity → INT
UnitPrice → DECIMAL
Removed duplicate records
Handled missing customer IDs
📈 Key Business Insights
💰 Total Revenue: 3.60M generated from all transactions, indicating strong overall sales performance
🌍 Top Country: United Kingdom is the dominant contributor, generating the majority of total revenue
📦 Top Products:
Regency Cake Stand (highest revenue generator)
White Hanging Heart T-Light Holder
Picnic Basket
📅 Sales Trend: Revenue shows a gradual decline over time after peak periods, suggesting seasonality or reduced demand
👥 Customer Behavior: ~3,000 customers placed ~8,000 orders, indicating repeat purchasing patterns
📉 Observation: A noticeable drop in revenue in later months highlights potential business or seasonal challenges
📊 Dashboard Features
The interactive Power BI dashboard includes:
Total Revenue, Orders, Customers, and Quantity KPIs
Revenue distribution by country
Top-performing products by revenue
Monthly revenue trends
Interactive filters (Month-Year, Country) for dynamic analysis
🖼️ Dashboard Preview
dashboard.png
🚀 Conclusion
This project showcases an end-to-end data analysis pipeline: Raw Data → Data Cleaning → Analysis → Visualization → Business Insights
It reflects practical, job-ready skills required for a Data Analyst role, including data processing, analytical thinking, and data storytelling.
🔗 How to Use
Access the dataset from the /Data folder
Run SQL scripts from the /SQL folder for data cleaning
Review cleaned data in Excel
Open the .pbix file in Power BI to explore the dashboard
🙋‍♀️ About Me
Aspiring Data Analyst with a strong interest in transforming raw data into meaningful insights and building impactful dashboards for business decision-making.Support
If you found this project useful, feel free to ⭐ the repository.
