SELECT * FROM 'Online Sales Data'

--- Sales trends by region
DELETE FROM 'online sales data' WHERE region = '3'


SELECT
    Region,
    COUNT(*) AS transactions
FROM 'Online Sales Data'
GROUP BY Region
ORDER BY transactions DESC;

--- Sales changing overtime
SELECT  
    strftime('%Y-%m', "Date") AS "Month",
    SUM("Total Revenue") AS "Monthly Revenue"
FROM "Online Sales Data"
GROUP BY "Month"
    

--Product category popularity by region
SELECT
    "Product Category",
    "Region",
     COUNT(*) AS transactions
     
FROM "Online Sales Data"
GROUP BY "Product Category", "Region"
ORDER BY transactions DESC;

-- Payment method usage

SELECT
    "Payment Method",
    COUNT(*) AS transactions
FROM "Online Sales Data"
GROUP BY "Payment Method"
ORDER BY transactions DESC;

---Top 10 selling products
SELECT
    "Product Name",
     COUNT(*) AS times_bought
FROM "Online Sales Data"
GROUP BY "Product Name"
ORDER BY times_bought DESC
LIMIT 10;

--Category performnace across different regions
SELECT
    "Product Category",
    "Region",
    SUM("Total Revenue") as "Total Revenue"
    
FROM "Online Sales Data"
GROUP BY "Product Category",  "Region"
ORDER BY "Total Revenue" DESC
