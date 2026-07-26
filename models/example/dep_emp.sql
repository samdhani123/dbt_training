{{config(materialized='table')}}

select emp_id,first_name,last_name
first_name||last_name as full_name,
sal as emp_salary
from 
{{ref('emp_d_p_tables')}}