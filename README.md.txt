# Online Retail Sales Analysis

## Project Overview
This project analyzes online retail transactions using SQL Server and Power BI to identify sales trends, top-performing countries, and products with high sales value.

## Tools Used
- SQL Server
- Power BI
- Power Query
- DAX

## Dataset
The dataset contains 541,909 transaction records with information about invoices, products, quantities, prices, dates, customers, and countries.

## Data Cleaning
- Excluded cancelled invoices identified by invoice numbers starting with `C`.
- Removed rows with missing product descriptions in Power BI.
- Standardized text fields using Trim.
- Set appropriate data types for dates, quantities, prices, and identifiers.
- Retained negative quantities to account for returns.

## Key Performance Indicators
- Total Sales
- Total Invoices
- Total Customers
- Total Quantity

## Analysis
- Sales performance by country.
- Products and items with the highest sales value.
- Monthly sales trends over the available period.
- Customer purchasing activity.

## Key Findings
- The United Kingdom generated the highest sales value, approximately 9 million.
- Postage-related items appeared among the highest sales-value items and should be distinguished from physical products.
- The dataset covers December 2010 through December 2011, so it does not support a reliable long-term annual growth conclusion.

## Recommendations
- Strengthen customer retention in the United Kingdom.
- Explore opportunities in other markets to diversify sales.
- Separate postage and service charges from physical products when evaluating product performance.
- Monitor monthly sales trends and investigate significant changes.
- Review customer records with missing IDs to improve customer analysis.

## Important Note
Total Sales is not Profit. The dataset does not contain product cost, so profit cannot be calculated accurately.

## Project Files
- Power BI dashboard: `Online Retail Sales Analysis.pbix`
- Dashboard screenshot: `dashboard.png`

## Author
Aspiring Junior Data Analyst | SQL Server | Power BI | Excel | Python