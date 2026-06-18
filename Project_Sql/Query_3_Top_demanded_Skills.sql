/*
Question: What are the most in-demand skills for data analysts in India?
- Join job postings to inner join table similar to query 2
- Identify the top 5 in-demand skills for a data analyst.
- Focus on all job postings.
- Why? Retrieves the top 5 skills with the highest demand in the job market,
providing insights into the most valuable skills for job seekers.
*/

select 
    skills,
    count(job_postings_fact.job_id) as skill_count
From 
    job_postings_fact
inner JOIN skills_job_dim on job_postings_fact.job_id = skills_job_dim.job_id
inner JOIN skills_dim on skills_job_dim.skill_id = skills_dim.skill_id
where
    job_title_short like '%Data Analyst%'
    and job_country = 'India'
group by skills
order by skill_count desc
limit 5