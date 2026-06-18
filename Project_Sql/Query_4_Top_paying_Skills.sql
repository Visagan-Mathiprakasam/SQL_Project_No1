
/*
Answer: What are the top skills based on salary in India?
- Look at the average salary associated with each skill for Data Analyst positions
- Focuses on roles with specified salaries
- Why? It reveals how different skills impact salary levels for Data Analysts and
helps identify the most financially rewarding skills to acquire or improve
*/

select 
    skills,
    ROUND(AVG(job_postings_fact.salary_year_avg),2) as average_salary
From 
    job_postings_fact
inner JOIN skills_job_dim on job_postings_fact.job_id = skills_job_dim.job_id
inner JOIN skills_dim on skills_job_dim.skill_id = skills_dim.skill_id
where
    job_title_short like '%Data Analyst%'
    and job_country = 'India'
    and job_postings_fact.salary_year_avg is not null
group by skills
order by average_salary desc
limit 25