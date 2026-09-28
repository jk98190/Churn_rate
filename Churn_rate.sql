--  You are a senior Data analyst and your job is to analyze all these datasets with mean, median,modes looking at 2020-2025_CLEAN and Customer-Churn-Records_CLEAN
-- ============================================================
-- COMPREHENSIVE STATISTICAL ANALYSIS: 2020_2025_CLEAN & Customer_Churn_Records_CLEAN
-- Mean, Median, Mode for all numeric columns
-- ============================================================

-- SECTION 1: 2020_2025_CLEAN Statistics
SELECT
    '2020_2025_CLEAN' AS dataset,
    'c2' AS column_name,
    avg(c2) AS mean,
    median(c2) AS median,
    topK(1)(c2)[1] AS mode,
    min(c2) AS min_value,
    max(c2) AS max_value,
    stddevPop(c2) AS std_dev,
    count() AS total_rows
FROM `2020_2025_CLEAN`

UNION ALL

SELECT
    '2020_2025_CLEAN' AS dataset,
    'c3' AS column_name,
    avg(c3) AS mean,
    median(c3) AS median,
    topK(1)(c3)[1] AS mode,
    min(c3) AS min_value,
    max(c3) AS max_value,
    stddevPop(c3) AS std_dev,
    count() AS total_rows
FROM `2020_2025_CLEAN`

UNION ALL

SELECT
    '2020_2025_CLEAN' AS dataset,
    'c4' AS column_name,
    avg(c4) AS mean,
    median(c4) AS median,
    topK(1)(c4)[1] AS mode,
    min(c4) AS min_value,
    max(c4) AS max_value,
    stddevPop(c4) AS std_dev,
    count() AS total_rows
FROM `2020_2025_CLEAN`

UNION ALL

SELECT
    '2020_2025_CLEAN' AS dataset,
    'c5' AS column_name,
    avg(c5) AS mean,
    median(c5) AS median,
    topK(1)(c5)[1] AS mode,
    min(c5) AS min_value,
    max(c5) AS max_value,
    stddevPop(c5) AS std_dev,
    count() AS total_rows
FROM `2020_2025_CLEAN`

UNION ALL

SELECT
    '2020_2025_CLEAN' AS dataset,
    'c6' AS column_name,
    avg(c6) AS mean,
    median(c6) AS median,
    topK(1)(c6)[1] AS mode,
    min(c6) AS min_value,
    max(c6) AS max_value,
    stddevPop(c6) AS std_dev,
    count() AS total_rows
FROM `2020_2025_CLEAN`

UNION ALL

SELECT
    '2020_2025_CLEAN' AS dataset,
    'c7' AS column_name,
    avg(c7) AS mean,
    median(c7) AS median,
    topK(1)(c7)[1] AS mode,
    min(c7) AS min_value,
    max(c7) AS max_value,
    stddevPop(c7) AS std_dev,
    count() AS total_rows
FROM `2020_2025_CLEAN`

-- ============================================================
-- SECTION 2: Customer_Churn_Records_CLEAN Statistics
-- ============================================================

SELECT
    'Customer_Churn_Records_CLEAN' AS dataset,
    'Age' AS column_name,
    avg(Age) AS mean,
    median(Age) AS median,
    topK(1)(Age)[1] AS mode,
    min(Age) AS min_value,
    max(Age) AS max_value,
    stddevPop(Age) AS std_dev,
    count() AS total_rows
FROM Customer_Churn_Records_CLEAN

UNION ALL

SELECT
    'Customer_Churn_Records_CLEAN' AS dataset,
    'Balance' AS column_name,
    avg(Balance) AS mean,
    median(Balance) AS median,
    topK(1)(Balance)[1] AS mode,
    min(Balance) AS min_value,
    max(Balance) AS max_value,
    stddevPop(Balance) AS std_dev,
    count() AS total_rows
FROM Customer_Churn_Records_CLEAN

UNION ALL

SELECT
    'Customer_Churn_Records_CLEAN' AS dataset,
    'CreditScore' AS column_name,
    avg(CreditScore) AS mean,
    median(CreditScore) AS median,
    topK(1)(CreditScore)[1] AS mode,
    min(CreditScore) AS min_value,
    max(CreditScore) AS max_value,
    stddevPop(CreditScore) AS std_dev,
    count() AS total_rows
FROM Customer_Churn_Records_CLEAN

UNION ALL

SELECT
    'Customer_Churn_Records_CLEAN' AS dataset,
    'CustomerId' AS column_name,
    avg(CustomerId) AS mean,
    median(CustomerId) AS median,
    topK(1)(CustomerId)[1] AS mode,
    min(CustomerId) AS min_value,
    max(CustomerId) AS max_value,
    stddevPop(CustomerId) AS std_dev,
    count() AS total_rows
FROM Customer_Churn_Records_CLEAN

UNION ALL

SELECT
    'Customer_Churn_Records_CLEAN' AS dataset,
    'NumOfProducts' AS column_name,
    avg(NumOfProducts) AS mean,
    median(NumOfProducts) AS median,
    topK(1)(NumOfProducts)[1] AS mode,
    min(NumOfProducts) AS min_value,
    max(NumOfProducts) AS max_value,
    stddevPop(NumOfProducts) AS std_dev,
    count() AS total_rows
FROM Customer_Churn_Records_CLEAN

UNION ALL

SELECT
    'Customer_Churn_Records_CLEAN' AS dataset,
    'Tenure' AS column_name,
    avg(Tenure) AS mean,
    median(Tenure) AS median,
    topK(1)(Tenure)[1] AS mode,
    min(Tenure) AS min_value,
    max(Tenure) AS max_value,
    stddevPop(Tenure) AS std_dev,
    count() AS total_rows
FROM Customer_Churn_Records_CLEAN

-- ============================================================
-- SECTION 3: Categorical Column Frequency Analysis
-- for Customer_Churn_Records_CLEAN
-- ============================================================
SELECT
    'Customer_Churn_Records_CLEAN - Categorical' AS dataset,
    'Gender_Mode' AS column_name,
    NULL AS mean,
    NULL AS median,
    toFloat64(topK(1)(Gender)[1] = 'Male') AS mode,
    NULL AS min_value,
    NULL AS max_value,
    NULL AS std_dev,
    count() AS total_rows
FROM Customer_Churn_Records_CLEAN

UNION ALL

SELECT
    'Customer_Churn_Records_CLEAN - Categorical' AS dataset,
    'Geography_Mode' AS column_name,
    NULL AS mean,
    NULL AS median,
    toFloat64(topK(1)(Geography)[1] = 'France') AS mode,
    NULL AS min_value,
    NULL AS max_value,
    NULL AS std_dev,
    count() AS total_rows
FROM Customer_Churn_Records_CLEAN

ORDER BY
    dataset ASC,
    column_name ASC