/*
What the top paying Data Analyst jobs are in the India?
- Identify the top 10 Jobs of Data Analyst 
- No Null values in the salary column
- Why? To get insights on the top paying jobs in India for Data Analysts and to help job seekers make informed decisions about their career paths.
*/

select 
    job_id,
    job_title_short,
    job_country,
    job_schedule_type,
    salary_year_avg,
    name AS company_name
from 
    job_postings_fact
LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
where
    job_title_short like '%Data Analyst%'
    and job_country = 'India'
    and salary_year_avg is not null
order by
    salary_year_avg desc
limit 10;
    

