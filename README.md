# 📦 DataZon : An Amazon-Inspired Data Warehouse Project

This project showcases the design, implementation, and analysis of a **Data Warehouse** for a fictional e-commerce company inspired by **Amazon**. It leverages a star schema model to support Business Intelligence (BI) use cases such as sales analysis, customer insights, and promotional impact.

## 📘 Project Overview

The main objective is to simulate how Amazon or similar platforms can transform massive transactional data into strategic insights using a decision-support system (DSS). This includes:

- Understanding business goals and KPIs
- Creating a dimensional data model (star schema)
- Writing and executing analytical queries
- Implementing views for recurring insights

## 🛠️ Technologies Used

- **SQL Server** & **SQL Server Management Studio (SSMS)**
- **T-SQL** for DDL/DML and data analysis

## 🗂️ Data Model

The schema follows a **star model**, with a central fact table surrounded by dimensions:

### Fact Table
- `FactSales`: Contains quantitative sales data (product, customer, date, payment, shipping, etc.)

### Dimensions
- `DimProduct`: Product info (name, category, brand, etc.)
- `DimCustomer`: Customer info (name, contact, address)
- `DimSupplier`: Supplier details
- `DimDate`: Temporal dimensions (day, month, quarter, year)
- `DimPromotion`: Promotion campaigns and discounts
- `DimPaymentMethod`: Payment options
- `DimShipping`: Shipping methods and costs

## 📈 Analytical Queries

The project includes several decision-support SQL queries (in `requets analytiques.sql`), such as:

- Total sales by quarter
- Top-selling products
- Total sales by customer
- Sales by payment method
- Promotion impact analysis
- Sales by product category
- Monthly sales trends
- Customer-specific sales history
- High shipping cost orders

## 🔍 Business Use Cases

- This data warehouse enables answers to key strategic questions:
- Which products are most profitable?
- Which promotions drive the most revenue
- Who are the top customers?
- How do sales vary by season or payment method?
- What are the logistics costs trends?

## 📁 Files Included

Amazon big data.sql – Full SQL script for schema creation and sample data insertion

requets analytiques.sql – Analytical SQL queries

Rapport Big data.pdf – Full project report and documentation (French)

## 📝 License

This project is open-source and available under the [MIT License](https://opensource.org/licenses/MIT).
---
Feel free to contribute, modify the code, or apply it to other datasets for experimentation.
