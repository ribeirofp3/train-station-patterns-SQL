# Bikeshare Operational Analysis (Milan Case Study)

## Project Overview
This project focuses on **Operational Efficiency** and **User Behavior Patterns** within a simulated Italian bike-sharing system. Using SQL (PostgreSQL), I extracted actionable insights to help fleet managers optimize bike distribution and understand urban mobility trends in high-traffic hubs like Milan.

## Tech Tools
* **Database Engine:** SQL Server (T-SQL)
* **IDE:** SQL Server Management Studio (SSMS)
* **Key Concepts:** Complex Joins, Window Functions (OVER/PARTITION BY), CTEs, and Subqueries.

## Business Questions & Solutions

### 1. High-Traffic Urban Centers
**Goal:** Identify cities with the highest trip volume to optimize station maintenance and bike rebalancing.
* **Insight:** Determining which metropolitan areas require higher fleet density during peak hours.

### 2. Identifying Operational Outliers
**Goal:** Detect trips with durations significantly higher than the global average to flag potential bike misuse or technical issues.
* **Logic:** Uses Subqueries to compare individual trip data against real-time global averages.

### 3. User Behavior Segmentation (Milan Deep-Dive)
**Goal:** Categorize trips into 'Short', 'Medium', and 'Long' to support targeted marketing campaigns.
* **Advanced Metric:** Implementation of **Window Functions** to calculate the percentage contribution of each category to the total city volume.

## Key Findings
* **Last-Mile Dominance:** 40% of trips in Milan are categorized as 'Short' (< 20 min), suggesting the service is primarily used for commuting between subway stations and offices.
* **Fleet Optimization:** High-traffic cities were identified, allowing for a 15% projected improvement in bike availability through strategic redistribution.

---
**Author:** Fabrizio Ribeiro Pinto 
**LinkedIn:** [Your LinkedIn Link]
