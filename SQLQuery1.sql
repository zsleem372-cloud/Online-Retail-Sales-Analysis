SELECT COUNT(*) AS Total_Rows
FROM dbo.[Online Retail]


SELECT TOP 10 *
FROM dbo.[Online Retail]


SELECT
    COUNT(*) AS Total_Rows,
    COUNT(DISTINCT InvoiceNo) AS Unique_Invoices,
    COUNT(DISTINCT CustomerID) AS Unique_Customers,
    SUM(CASE WHEN CustomerID IS NULL THEN 1 ELSE 0 END) AS Missing_Customers,
    SUM(CASE WHEN Description IS NULL THEN 1 ELSE 0 END) AS Missing_Descriptions
FROM dbo.[Online Retail]


EXEC sp_rename 'dbo.[Online Retail]', 'dbo.online_retail';

SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'online_retail'

SELECT TABLE_SCHEMA, TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_NAME LIKE '%online%';

SELECT COLUMN_NAME, DATA_TYPE
FROM ECommerce_Analytics.INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'dbo.online_retail';




SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'dbo'
  AND TABLE_NAME = 'online_retail'



  SELECT TOP 10 *
FROM [dbo.online_retail]



select
sum(case when CustomerID  IS NULL then 1 else 0 end) as missing_Customers,
sum(case when  Description  IS NULL then 1 else 0 end) as missing_Descriptions,
sum(case when Quantity<0 then 1 else 0 end)as vegative_Quantity,
sum(case when UnitPrice<0 then 1 else 0 end)as vegative_Price
from dbo.online_retail



USE ECommerce_Analytics;
GO

SELECT TOP 10 *
FROM [dbo.online_retail]

 select
sum(case when CustomerID  IS NULL then 1 else 0 end) as missing_Customers,
sum(case when  Description  IS NULL then 1 else 0 end) as missing_Descriptions,
sum(case when Quantity<0 then 1 else 0 end)as negative_Quantity,
sum(case when UnitPrice<0 then 1 else 0 end)as negative_Price
from [dbo.online_retail]


SELECT
    SUM(CASE WHEN Quantity = 0 THEN 1 ELSE 0 END) AS Zero_Quantity,
    SUM(CASE WHEN UnitPrice = 0 THEN 1 ELSE 0 END) AS Zero_Price
FROM [dbo.online_retail]



select count(*) as Cancelled_Invoices
from [dbo.online_retail]
WHERE InvoiceNo LIKE 'C%'




EXEC sp_help '[dbo.online_retail]'



----## total sales& sales price

select year(InvoiceDate) as'sales years',
sum(Quantity*UnitPrice)as 'total_price'
from [dbo.online_retail]
WHERE InvoiceNo NOT LIKE 'C%'
group by year(InvoiceDate)
order by 'sales years'

----### top 10contry


select top 10 Country,
sum(Quantity*UnitPrice)as 'total_price'
from [dbo.online_retail]
WHERE InvoiceNo NOT LIKE 'C%'
GROUP BY Country
ORDER BY 'total_price' DESC

---## top Description sales


select top 10 Description,
sum(Quantity*UnitPrice)as 'total_price'
from [dbo.online_retail]
WHERE InvoiceNo NOT LIKE 'C%'
AND Description IS NOT NULL
GROUP BY Description 
ORDER BY 'total_price' DESC

---### top 10 CustomerID


select top 10 CustomerID,
sum(Quantity*UnitPrice)as 'total_price'
from [dbo.online_retail]
WHERE InvoiceNo NOT LIKE 'C%'
AND Description IS NOT NULL
GROUP BY  CustomerID
ORDER BY 'total_price' DESC



----##sales by month ,years
SELECT
    YEAR(InvoiceDate) AS 'Sales_Year',
    MONTH(InvoiceDate) AS 'Sales_Month',
    SUM(Quantity * UnitPrice) AS 'total_price'
FROM [dbo.online_retail]
WHERE InvoiceNo NOT LIKE 'C%'
GROUP BY
    YEAR(InvoiceDate),
    MONTH(InvoiceDate)
ORDER BY 'Sales_Year', 'Sales_Month'



