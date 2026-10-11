# Online Retail Sales Analysis

## Project Overview
This project analyzes online retail transactions using SQL Server and Power BI to understand sales performance, identify top-performing countries and products, and uncover monthly sales trends.

## Tools Used
- SQL Server
- Power BI
- Power Query
- DAX

## Dataset
The dataset contains 541,909 transaction records, including invoice numbers, product descriptions, quantities, unit prices, invoice dates, customer IDs, and countries.

## Data Cleaning
- Excluded cancelled invoices identified by invoice numbers starting with `C`.
- Removed records with missing product descriptions in Power BI.
- Standardized text fields using Trim.
- Applied appropriate data types to dates, quantities, prices, and identifiers.
- Retained negative quantities to account for product returns.

## Key Performance Indicators (KPIs)
- Total Sales
- Total Invoices
- Total Customers
- Total Quantity

## Analysis
- Sales performance by country.
- Top products and items by sales value.
- Monthly sales trends.
- Customer purchasing activity.

## Key Findings
- The United Kingdom generated the highest sales value, approximately 9 million.
- Postage-related items appeared among the highest sales-value items and should be analyzed separately from physical products.
- The dataset covers December 2010 through December 2011, limiting long-term growth analysis.

## Recommendations
- Strengthen customer retention in the United Kingdom.
- Explore opportunities in other markets to diversify sales.
- Separate postage and service charges from physical products when evaluating product performance.
- Monitor monthly sales trends and investigate significant changes.
- Review records with missing customer IDs to improve customer-level analysis.

## Important Note
Total Sales is not Profit. Since product cost data is unavailable, profit cannot be calculated accurately.

## Dashboard Preview
![Online Retail Sales Dashboard](dashboard.png)

## Project Files
- `Online Retail Sales Analysis.pbix` — Power BI dashboard.
- `dashboard.png` — Dashboard screenshot.
- `Online_Retail_Analysis.sql` — SQL analysis queries.

## Author
Aspiring Junior Data Analyst | SQL Server | Power BI | Excel | Python
