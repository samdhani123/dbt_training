{{ config(
    materialized='incremental',
    unique_key='customer_id'
) }}
 
select
    customer_id,
    customer_name,
    city,
    created_date
from {{ source('raw', 'customers') }}
 
{% if is_incremental() %}
where created_date > (select max(created_date) from {{ this }})
{% endif %}
