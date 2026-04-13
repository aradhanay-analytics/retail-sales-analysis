-- =========================================
-- Project: Online Retail Data Analysis
-- Description: Data cleaning using SQL before Power BI visualization
-- =========================================

-- Step 1: Create Table
CREATE TABLE Online_Retail (
    InvoiceNo VARCHAR(20),
    StockCode VARCHAR(20),
    Description VARCHAR(255),
    Quantity VARCHAR(50),
    InvoiceDate VARCHAR(50),
    UnitPrice VARCHAR(50),
    CustomerID VARCHAR(50),
    Country VARCHAR(100)
);

-- -----------------------------------------

-- Step 2: Preview Data
SELECT TOP 10 * FROM Online_Retail;

-- -----------------------------------------

-- Step 3: Identify invalid Quantity values
SELECT Quantity
FROM Online_Retail
WHERE TRY_CAST(Quantity AS INT) IS NULL;

-- Step 4: Remove invalid Quantity values
DELETE FROM Online_Retail
WHERE TRY_CAST(Quantity AS INT) IS NULL;

-- Step 5: Convert Quantity to INT
ALTER TABLE Online_Retail
ALTER COLUMN Quantity INT;

-- -----------------------------------------

-- Step 6: Identify invalid UnitPrice values
SELECT UnitPrice
FROM Online_Retail
WHERE TRY_CAST(UnitPrice AS DECIMAL(10,2)) IS NULL;

-- Step 7: Remove invalid UnitPrice values
DELETE FROM Online_Retail
WHERE TRY_CAST(UnitPrice AS DECIMAL(10,2)) IS NULL;

-- Step 8: Convert UnitPrice to DECIMAL
ALTER TABLE Online_Retail
ALTER COLUMN UnitPrice DECIMAL(10,2);

-- -----------------------------------------

-- Step 9: Identify invalid InvoiceDate values
SELECT InvoiceDate
FROM Online_Retail
WHERE TRY_CAST(InvoiceDate AS DATETIME) IS NULL;

-- Step 10: Remove invalid InvoiceDate values
DELETE FROM Online_Retail
WHERE TRY_CAST(InvoiceDate AS DATETIME) IS NULL;

-- Step 11: Convert InvoiceDate to DATETIME
ALTER TABLE Online_Retail
ALTER COLUMN InvoiceDate DATETIME;

-- -----------------------------------------

-- Step 12: Clean CustomerID column
DELETE FROM Online_Retail
WHERE TRY_CAST(CustomerID AS INT) IS NULL;

ALTER TABLE Online_Retail
ALTER COLUMN CustomerID INT;

-- -----------------------------------------

-- Step 13: Detect duplicates
SELECT *,
ROW_NUMBER() OVER (
    PARTITION BY InvoiceNo, StockCode, CustomerID
    ORDER BY InvoiceNo
) AS rn
FROM Online_Retail;

-- Step 14: Remove duplicates
WITH CTE AS (
    SELECT *,
    ROW_NUMBER() OVER (
        PARTITION BY InvoiceNo, StockCode, CustomerID
        ORDER BY InvoiceNo
    ) AS rn
    FROM Online_Retail
)
DELETE FROM CTE WHERE rn > 1;

-- -----------------------------------------

-- Step 15: Remove invalid values (negative or zero)
DELETE FROM Online_Retail
WHERE Quantity <= 0 OR UnitPrice <= 0;

-- -----------------------------------------

-- Step 16: Final cleaned data
SELECT * FROM Online_Retail;