# Data Warehouse Project

Welcome to the **Data Warehouse** repository!

This project demonstrates a complete **Data Warehousing** solution designed using the **Medallion Architecture (Bronze → Silver → Gold)**. It includes automated **SQL-based ETL pipelines**, robust data quality transformations, and a deep **Exploratory Data Analysis (EDA)** to extract key business insights from customer, product, and sales data.

---

## Project Overview

- **Architecture:** Medallion Architecture  
  (Bronze → Silver → Gold) to ensure data quality, traceability, and scalability  
- 📊 **Data Volume:** Over **500,000+ rows** of customer, product, and sales data processed and transformed  
- 🔁 **ETL Pipelines:** Automated SQL workflows for:  
  - Data ingestion  
  - Cleaning & deduplication  
  - Data normalisation & integration  
  - Schema standardisation  
-  **Gold Layer:** Built high-performance Gold layer views optimised for analytics & reporting  

---

## Medallion Architecture Summary

| Layer | Purpose | Key Actions |
|--------|-----------|----------------|
| **Bronze** | Raw data ingestion | Loading raw data with no transformations |
| **Silver** | Clean & structured | Data cleaning, deduplication, type corrections, normalization |
| **Gold** | Analytics-ready | Business logic, aggregations, KPIs, reporting-friendly tables |

---

## Exploratory Data Analysis (EDA)

A detailed EDA was performed on the **Gold layer** to uncover business and behavioural insights:

### Data Understanding & Profiling
- Table schemas, key columns, and data types
- Customer demographics (country, gender, age grouping)
- Product hierarchies (category, sub-category, product name)
- Date range assessments & customer lifetime value analysis

### Business Metrics Calculated
- Total Sales
- Total Quantity Sold
- Number of Customers
- Number of Products
- Number of Orders

### Performance Insights
- Top and bottom products & sub-categories
- Highest & lowest revenue contributors
- Most & least active customers
- Trend and pattern discovery using window & ranking functions

These insights support **data-driven decision making**, enabling enhanced reporting and strategic planning.

---

## Project Documentation

For the complete project planning, workflow design, and documentation, visit the link below:

🔗 **Notion Workspace:**  
https://www.notion.so/DATA-WAREHOUSE-205a8866f9df801993e8e9c786e14b82?source=copy_link

---

