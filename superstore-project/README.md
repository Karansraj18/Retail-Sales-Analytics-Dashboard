

## Project Overview

This project simulates a real-world business analytics workflow: taking raw transactional data, cleaning and transforming it, extracting business insights through SQL, and presenting findings in an interactive Power BI dashboard.

## Tools Used

- **Python (Pandas, Jupyter Notebook)** — data cleaning and transformation
- **MySQL** — data storage and analytical querying
- **Power BI** — interactive dashboard and visualization

## Workflow

### 1. Data Cleaning (Python)
- Loaded 9,994 retail order records
- Verified data quality: no missing values, no duplicate rows
- Converted `Order Date` and `Ship Date` from text to proper datetime format
- Engineered a new feature, `Shipping Days`, calculated as the difference between order and ship dates
- Validated the new column (range: 0–7 days, no negative or anomalous values)
- Exported the cleaned dataset for downstream analysis

### 2. SQL Analysis (MySQL)
Loaded the cleaned dataset into a MySQL database and wrote queries to answer key business questions:
- Revenue, profit, and profit margin by product category
- Relationship between discount levels and profitability
- Top and bottom performing states by profit

### 3. Dashboard (Power BI)
Connected Power BI directly to the MySQL database and built an interactive dashboard featuring:
- KPI cards for total sales, profit, and quantity sold
- Sales by category breakdown
- Profit by state
- Sales trend over time
- Average discount by category

## Key Findings

- **Technology** is the strongest-performing category, generating the highest profit margin (~17.4%) alongside the highest sales.
- **Furniture** generates substantial revenue (~$2.97M) but the weakest margin (~2.5%) — driven by the highest average discount rate (17.4%) of any category, nearly outweighing its profitability entirely.
- **Regional performance is highly uneven**: California and New York are the most profitable states by a wide margin, while Texas, Ohio, Pennsylvania, Illinois, and North Carolina post net losses despite meaningful sales volume — a pattern invisible from revenue figures alone.
- These findings suggest discounting strategy, not sales volume, is the primary driver of regional and category-level profitability gaps.

## Files in This Project

| File | Description |
|------|-------------|
| `data_cleaning.ipynb` | Python notebook for data cleaning and feature engineering |
| `Superstore_Cleaned.csv` | Cleaned dataset used for SQL and Power BI |
| `superstore_analysis.sql` | SQL scripts for data loading and business analysis |
| `Superstore_Dashboard.pbix` | Power BI dashboard file |

## Skills Demonstrated

Data cleaning · Feature engineering · SQL querying · Data aggregation · Business insight generation · Dashboard design · Data visualization
