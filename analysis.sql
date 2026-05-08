-- HR Attrition SQL Analysis
-- Tool: PoatgreSQL

--Query 1: Overall Attrition Rate
SELECT 
  Attrition,
  COUNT(*) AS Count,
  ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM hr), 2) AS Percentage
FROM hr
GROUP BY Attrition;
-- attrition | count | percentage
-----------+-------+------------
-- No        |  1233 |      83.88
-- Yes       |   237 |      16.12
--Finding: 16.12% attrition rate, 1 in 6 employees leaving

-- Query 2: Attrition by Department
SELECT 
  Department,
  COUNT(*) AS TotalEmployees,
  SUM(AttritionFlag) AS Attrited,
  ROUND(SUM(AttritionFlag) * 100.0 / COUNT(*), 2) AS AttritionRate
FROM hr
GROUP BY Department
ORDER BY AttritionRate DESC;
--        department       | toatalemployee | attrited | attritionrate
------------------------+----------------+----------+---------------
-- Sales                  |            446 |       92 |         20.63
-- Human Resources        |             63 |       12 |         19.05
-- Research & Development |            961 |      133 |         13.84
-- Finding: Sales highest at 20.63%, R&D most stable at 13.84%

-- Query 3: Average Salary vs Attrition
SELECT 
  Attrition,
  ROUND(AVG(MonthlyIncome), 2) AS AvgSalary,
  ROUND(MIN(MonthlyIncome), 2) AS MinSalary,
  ROUND(MAX(MonthlyIncome), 2) AS MaxSalary
FROM hr
GROUP BY Attrition;
-- attrition | avgsalary | minsalary | maxsalary
-----------+-----------+-----------+-----------
-- No        |   6832.74 |   1051.00 |  19999.00
-- Yes       |   4787.09 |   1009.00 |  19859.00
-- Finding: Employees who left earned 30% less (4787 vs 6832)

-- Query 4: Attrition by Job Role
SELECT 
  JobRole,
  COUNT(*) AS TotalEmployees,
  SUM(AttritionFlag) AS Attrited,
  ROUND(SUM(AttritionFlag) * 100.0 / COUNT(*), 2) AS AttritionRate
FROM hr
GROUP BY JobRole
ORDER BY AttritionRate DESC;
--          jobrole          | totalemployees | attrited | attritionrate
---------------------------+----------------+----------+---------------
-- Sales Representative      |             83 |       33 |         39.76
-- Laboratory Technician     |            259 |       62 |         23.94
-- Human Resources           |             52 |       12 |         23.08
-- Sales Executive           |            326 |       57 |         17.48
-- Research Scientist        |            292 |       47 |         16.10
-- Manufacturing Director    |            145 |       10 |          6.90
-- Healthcare Representative |            131 |        9 |          6.87
-- Manager                   |            102 |        5 |          4.90
-- Research Director         |             80 |        2 |          2.50
-- Finding: Sales Representatives highest at 39.76%, Research Directors lowest at 2.50%