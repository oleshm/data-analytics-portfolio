-- Project 3: HR Employee Analytics
-- Client: Sara, HR Director at IT company

-- 1. Average Salary by Department
SELECT Department, AVG(MonthlyIncome) AS avg_salary
FROM employees
GROUP BY Department
ORDER BY avg_salary DESC;

--2. Total Employee Turnover
SELECT COUNT(Attrition) AS num_resigned
FROM employees
WHERE Attrition = 'Yes';

-- 3. Turnover by Department
SELECT Department, COUNT(Attrition) AS resigned
FROM employees
WHERE Attrition = 'Yes'
GROUP BY Department
ORDER BY resigned DESC;

-- 4. Job Satisfaction Distribution
SELECT JobSatisfaction_Label, COUNT(JobSatisfaction_Label) AS total
FROM employees
GROUP BY JobSatisfaction_Label
ORDER BY total DESC;

-- 5. Job Satisfaction vs Turnover
SELECT JobSatisfaction_Label, COUNT(*) AS resigned
FROM employees
WHERE Attrition = 'Yes'
GROUP BY JobSatisfaction_Label
ORDER BY resigned DESC;
