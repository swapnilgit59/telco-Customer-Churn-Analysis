USE telco_churn_db;
SELECT * FROM telco_churn;
# Business Question 

# 1. HOW MANY TOTAL CUSTOMER ARE THERE ?
SELECT COUNT(*) AS TOTAL_CUSTOMER FROM TELCO_CHURN;

# 2. HOW MANY CUSTOMER ARE CHURNED ?
SELECT COUNT(*) AS CHURNED_CUSTOMER FROM TELCO_CHURN WHERE CHURN = "Yes";

# 3. HOW MANY CUSTOMER ARE NOT CHURNED ?
SELECT COUNT(*) AS ACTIVE_CUSTOMER FROM TELCO_CHURN WHERE CHURN = "No";

# 4. WHICH CONTRACT TYPE HAS HIGEST CHURN RATE
SELECT
    contract,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS churn_rate_percentage
FROM telco_churn
GROUP BY contract
ORDER BY churn_rate_percentage DESC;

# 5. HOW MUCH MONTLY REVENUE IS AT RISK BECAUSE OF CHURN ?
SELECT 
   ROUND(SUM(monthlycharges), 2) AS churned_montly_revenue,
   ROUND(
        100.0 * SUM(monthlycharges) / 
        (SELECT SUM(monthlycharges) FROM telco_churn),
        2
   ) AS revenue_at_risk_percentage
   FROM telco_churn 
   WHERE churn = "Yes";
   
   # 6. WHO ARE THE TOP 10 	HIGH VALUE CHURNED CUSTOMER
  SELECT
    customerid,
    contract,
    internetservice,
    tenure,
    monthlycharges,
    totalcharges
FROM telco_churn
WHERE churn = 'Yes'
ORDER BY monthlycharges DESC
LIMIT 10;

# 7. WHAT IS AVERAGE MONTHLY CHARGES
SELECT
   ROUND(AVG(monthlycharges), 2) AS average_monthly_charge
FROM telco_churn
  