{{ config(materialized='table',alias='dim_cust',query_tag='DBT model') }}
 
select *
from {{ ref('stg_customers') }}
