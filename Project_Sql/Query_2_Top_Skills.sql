/*
Question: What skills are required for the top-paying data analyst jobs in India?
- Use the top 10 highest-paying Data Analyst jobs from first query
- Add the specific skills required for these roles
- Why? It provides a detailed look at which high-paying jobs demand certain skills,
helping job seekers understand which skills to develop that align with top salaries
*/


With top_paying_jobs as (

    select 
        job_id,
        job_title_short,
        job_country,
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
    limit 10
)
Select
    top_paying_jobs.*,
    skills
From 
    top_paying_jobs
inner JOIN skills_job_dim on top_paying_jobs.job_id = skills_job_dim.job_id
inner JOIN skills_dim on skills_job_dim.skill_id = skills_dim.skill_id
-- where company_name = 'Bosch Group' 
-- the above line can be uncommented to filter for a specific company, in this case, Bosch Group, to see the skills required for their top-paying data analyst job.
Order BY 
    salary_year_avg desc