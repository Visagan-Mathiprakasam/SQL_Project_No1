# Data Analyst Job Market Analysis in India (SQL Project)

## Project Overview

This project explores the Indian Data Analyst job market using SQL and PostgreSQL.

The analysis focuses on answering five key questions:

1. What are the highest-paying Data Analyst jobs in India?
2. What skills are required for these top-paying roles?
3. What are the most in-demand skills for Data Analysts in India?
4. Which skills command the highest salaries?
5. What skills offer the best combination of demand and salary?

The goal is to identify the most valuable skills for aspiring Data Analysts and provide data-driven career insights.

---

## Dataset

The dataset contains job postings with information about:

- Job titles
- Salary estimates
- Company information
- Required skills
- Job locations

Tables used:

- job_postings_fact
- company_dim
- skills_job_dim
- skills_dim

---

## Tools Used

- PostgreSQL
- SQL
- Common Table Expressions (CTEs)
- Aggregate Functions
- Joins
- Filtering & Ranking Queries

---

# Analysis

## 1. Top Paying Data Analyst Jobs in India: [View SQL Query](/Project_Sql/Query_1_Top_paying_Jobs.sql)

### Objective

Identify the highest-paying Data Analyst jobs in India with available salary information.

### Key Findings

- The highest salary recorded was $650,000 for a Data Analyst position at Mantys.
- Most top-paying positions ranged between $147,000 and $177,000 annually.
- Senior Data Analyst roles consistently appeared among the highest-paying opportunities.
- Companies such as Verisk, Bosch Group, ServiceNow, Deliveroo, and Eagle Genomics offered some of the strongest compensation packages.

### Skills Demonstrated

- Filtering
- Sorting
- LEFT JOIN
- Salary Analysis

---

## 2. Skills Required for Top-Paying Jobs: [View SQL Query](/Project_Sql/Query_2_Top_Skills.sql)

### Objective

Identify which skills are commonly requested among the highest-paying Data Analyst roles.

### Key Findings

The most frequently appearing skills included:

- SQL
- Python
- AWS
- Oracle
- Power BI
- Spark

Many high-paying positions also required:

- Hadoop
- Databricks
- Kafka
- Snowflake
- Azure

### Insight

The highest-paying Data Analyst roles increasingly combine traditional analytics skills with cloud and big-data technologies.

---

## 3. Most In-Demand Skills in India: [View SQL Query](/Project_Sql/Query_3_Top_demanded_Skills.sql)

### Objective

Identify the skills most frequently requested by employers.

| Skill | Job Postings |
|---------|------------:|
| SQL | 3,861 |
| Python | 2,650 |
| Excel | 2,425 |
| Tableau | 2,016 |
| Power BI | 1,487 |

### Key Findings

- SQL was the most requested skill by a significant margin.
- Python remained the second most demanded skill.
- Business Intelligence tools such as Tableau and Power BI were consistently requested across job postings.
- Excel remains highly relevant despite the growth of modern analytics platforms.

---

## 4. Highest-Paying Skills: [View SQL Query](/Project_Sql/Query_4_Top_paying_Skills.sql)

### Objective

Determine which skills are associated with the highest average salaries.

### Key Findings

Top-paying skills included:

- Linux
- PostgreSQL
- MySQL
- GitLab
- Neo4j
- MongoDB
- Databricks
- Spark

### Insight

Many of the highest-paying skills belong to database, cloud, and big-data ecosystems rather than traditional dashboarding tools.

---

## 5. Most Optimal Skills to Learn: [View SQL Query](/Project_Sql/Query_5_Optimal_Skills.sql)

### Objective

Identify skills that provide both strong demand and strong compensation.

### Results

| Skill | Demand Count | Average Salary |
|---------|------------:|--------------:|
| SQL | 65 | $98,240 |
| Python | 45 | $100,596 |
| Power BI | 18 | $109,907 |
| Tableau | 28 | $97,412 |
| AWS | 14 | $100,191 |
| Spark | 11 | $118,332 |

### Key Findings

- SQL remains the strongest foundational skill due to extremely high demand.
- Python offers both strong demand and strong salary potential.
- Power BI provides an attractive salary-to-demand ratio.
- Spark delivers the highest salary premium among commonly requested skills.

---

# Final Conclusions

Based on the analysis, the most valuable skills for Data Analysts in India are:

1. SQL
2. Python
3. Power BI
4. Tableau
5. AWS
6. Spark

While SQL and Python remain essential, professionals who combine analytics skills with cloud and big-data technologies are positioned for the highest-paying opportunities.

---

## SQL Concepts Used

- CTEs
- INNER JOIN
- LEFT JOIN
- Aggregate Functions
- GROUP BY
- HAVING
- ORDER BY
- Filtering
- Ranking Queries