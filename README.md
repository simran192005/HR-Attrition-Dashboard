# HR Attrition Dashboard

## Project Overview
An end-to-end data analytics project analyzing employee 
attrition patterns using Python, SQL, and Power BI.

## Tools Used
- Python (Pandas) — Data Cleaning
- PostgreSQL — Data Analysis
- Power BI — Dashboard & Visualization

## Dataset
IBM HR Analytics Dataset — 1470 employees, 33 columns
Source: Kaggle

## Project Steps
1. Data Cleaning (Python)
   - Removed 3 zero-variance columns
   - Encoded Attrition to numeric (Yes=1, No=0)
   - Exported clean CSV

2. SQL Analysis (PostgreSQL)
   - Overall attrition rate
   - Department-wise attrition
   - Salary vs attrition comparison
   - Job role attrition breakdown

3. Power BI Dashboard (3 pages)
   - Page 1: Overview KPIs
   - Page 2: Department & Salary Insights
   - Page 3: Key Findings

## Key Findings
- Overall attrition rate: 16.12%
- Sales department most affected: 20.63%
- Employees who left earned 30% less: ₹4,787 vs ₹6,832
- Sales Representatives highest risk: 39.76% attrition
- Overtime employees leave significantly more

## Dashboard Screenshots
### Page 1 — Overview
![Page 1](page1_overview.png)

### Page 2 — Insights
![Page 2](page2_insights.png)

### Page 3 — Key Findings
![Page 3](page3_findings.png)
