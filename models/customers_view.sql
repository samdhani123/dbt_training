{{ config(materialized='view',alias='stage_cust_vw') }}
 
select *
from {{ ref('stg_customers') }}
