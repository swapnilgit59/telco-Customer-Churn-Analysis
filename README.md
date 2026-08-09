# 📊 Customer Churn Analysis | Python • SQL • Power BI

## 📌 Project Overview

**Customer Churn Analysis** is an end-to-end data analytics project focused on understanding **why customers leave a telecommunications company and which customer segments are most at risk of churn**.

The project uses **Python for data cleaning and exploratory analysis, SQL for business analysis, and Power BI for interactive visualization and reporting**.

The objective is to transform raw customer data into actionable insights that can help the business **reduce customer churn, improve retention, and identify revenue-at-risk segments**.

---

## 🏢 Business Problem

Customer churn directly impacts a subscription-based company's revenue and long-term growth. The business wants to understand customer attrition patterns and identify the factors associated with customers leaving.

The analysis focuses on answering key business questions:

* **Which customer segments have the highest churn rate?**
* **Does contract type influence customer churn?**
* **Are new customers more likely to churn?**
* **Does higher monthly pricing contribute to customer churn?**
* **Which payment methods are associated with higher churn?**
* **Does the adoption of additional services improve customer retention?**
* **Which customer segments represent the highest revenue at risk?**
* **Which customers should the retention team prioritize?**
* **What factors should the business focus on to improve customer retention?**

---

## 🎯 Project Objectives

* Analyze overall customer churn and retention.
* Identify major factors associated with customer attrition.
* Compare churn across contract types, tenure groups, services, and payment methods.
* Identify high-risk customer segments.
* Quantify monthly revenue associated with churned customers.
* Provide actionable insights for customer retention strategies.
* Build an interactive dashboard for business decision-making.

---

# 🛠️ Tools & Technologies

| Tool                          | Purpose                                                  |
| ----------------------------- | -------------------------------------------------------- |
| 🐍 **Python**                 | Data cleaning, preprocessing & exploratory data analysis |
| 🗄️ **MySQL**                 | Business analysis and SQL queries                        |
| 📊 **Power BI**               | Interactive dashboard and data visualization             |
| 🔄 **Power Query**            | Data transformation and preparation                      |
| 📐 **DAX**                    | KPI and calculated measure creation                      |             |
| 📈 **Power BI Data Modeling** | Relationships and analytical model                       |

---

# 📂 Dataset

The dataset contains **7,043 telecommunications customers**, with one record representing one customer.

### Dataset Categories

**Customer Information**

* Customer ID
* Gender
* Senior Citizen
* Partner
* Dependents

**Account Information**

* Tenure
* Contract
* Payment Method
* Paperless Billing

**Service Information**

* Phone Service
* Multiple Lines
* Internet Service
* Online Security
* Online Backup
* Device Protection
* Tech Support
* Streaming TV
* Streaming Movies

**Billing Information**

* Monthly Charges
* Total Charges

**Target Variable**

* Churn — Yes / No

### Dataset Characteristics

* **Records:** 7,043 customers
* **Granularity:** One record per customer
* **Format:** CSV / Excel
* **Domain:** Telecommunications
* **Analysis Type:** Customer Churn & Retention Analysis

---

# 🔄 Project Workflow

```text
Raw Customer Data
       ↓
Data Cleaning & Validation
       ↓
Python Exploratory Data Analysis
       ↓
SQL Business Analysis
       ↓
Data Modeling
       ↓
DAX KPI & Measures
       ↓
Power BI Dashboard
       ↓
Business Insights
       ↓
Retention Recommendations
```

---

# 🐍 1. Python Analysis

Python was used to prepare and explore the dataset before performing business analysis.

### Key Activities

* Data loading and inspection
* Missing value analysis
* Duplicate detection
* Data type validation
* Data cleaning
* Feature standardization
* Exploratory Data Analysis
* Churn distribution analysis
* Customer segmentation
* Service and contract analysis
* Monthly charge analysis
* Churn pattern identification

Python libraries used:

```text
pandas
numpy
matplotlib
seaborn
```

---

# 🗄️ 2. SQL Business Analysis

MySQL was used to answer business questions and identify customer segments associated with higher churn.

### SQL Analysis Included

* Customer and churn counts
* Churn rate calculation
* Churn by contract type
* Churn by tenure
* Churn by internet service
* Churn by payment method
* Churn by additional services
* High-value churned customers
* Revenue at risk
* High-risk customer segments
* Customer segmentation

### Example Business Analysis

```sql
SELECT
    contract,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*), 2
    ) AS churn_rate
FROM telco_churn
GROUP BY contract
ORDER BY churn_rate DESC;
```

This analysis helps determine whether **contract duration is associated with customer churn**.

---

# 📊 3. Power BI Dashboard

An interactive Power BI dashboard was created to provide stakeholders with a clear view of customer churn and retention performance.

## 📌 KPI Overview

The dashboard tracks:

* 👥 Total Customers
* ❌ Churned Customers
* ✅ Retained Customers
* 📉 Churn Rate
* 💰 Monthly Charges
* 💵 Revenue at Risk

---

## 📈 Key Dashboard Analysis

### Churn by Contract Type

Analyzes churn across:

* Month-to-Month
* One Year
* Two Year

This helps identify whether customers on shorter contracts are more vulnerable to churn.

### Churn by Tenure

Analyzes churn across customer tenure groups to identify periods where customers are most likely to leave.

### Monthly Charges Analysis

Compares monthly charges between churned and retained customers to understand the relationship between pricing and churn.

### Service Adoption Analysis

Examines whether services such as:

* Online Security
* Online Backup
* Device Protection
* Tech Support

are associated with better customer retention.

### Customer Segmentation

Analyzes churn across different combinations of:

* Demographics
* Contract type
* Internet service
* Payment method
* Tenure
* Monthly charges

---

# 📐 Power BI / DAX

DAX was used to create business KPIs and analytical measures.

Examples include:

* Total Customers
* Churned Customers
* Retained Customers
* Churn Rate
* Average Monthly Charges
* Total Charges
* Revenue at Risk
* Customer Segments

Power BI data modeling was used to structure the analytical dataset and support interactive filtering and reporting.

---

# 💡 Key Business Insights

### 🔴 1. Month-to-Month Customers

Month-to-month customers show the highest churn tendency, indicating an opportunity to improve **long-term contract conversion and retention incentives**.

### 🔴 2. Early-Tenure Customers

Customers in the early stages of their relationship are more vulnerable to churn, highlighting the importance of **early customer engagement and onboarding programs**.

### 🔴 3. Monthly Charges

Customers with higher monthly charges show greater churn tendency, suggesting the business should evaluate **pricing, value perception, and targeted offers**.

### 🟢 4. Additional Services

Customers using services such as Online Security and Online Backup demonstrate stronger retention patterns, creating potential opportunities for **service bundling and cross-selling**.

### 💰 5. Revenue at Risk

SQL analysis was used to quantify the monthly charges associated with churned customers, helping the business understand the **financial impact of customer attrition**.

---

# 🎯 Business Recommendations

Based on the analysis, the business could consider:

1. **Targeting month-to-month customers** with incentives for longer contracts.
2. **Improving onboarding** for new customers during their initial months.
3. **Reviewing pricing and value propositions** for high-charge customers.
4. **Promoting value-added services** such as Online Security and Online Backup.
5. **Prioritizing high-value churn-risk customers** for retention campaigns.
6. **Monitoring revenue at risk** as a key churn KPI.

# 🚀 Project Outcome

This project demonstrates an end-to-end data analytics workflow:

**Python → SQL → Power BI → Business Insights**

The analysis transforms raw customer data into actionable insights around **customer churn, retention, high-risk segments, and revenue at risk**, helping stakeholders make data-driven customer retention decisions.

---

## 🔑 Skills Demonstrated

`Python` • `Pandas` • `NumPy` • `Matplotlib` • `Seaborn` • `SQL` • `MySQL` • `Power BI` • `Power Query` • `DAX` • `Data Cleaning` • `EDA` • `Data Visualization` • `Data Modeling` • `Business Intelligence` • `Customer Segmentation` • `Business Analysis`
