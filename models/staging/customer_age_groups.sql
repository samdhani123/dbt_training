{{ config(materialized='ephemeral') }}
 
select
    customer_id,
    case
        when age < 18 then 'Minor'
        when age between 18 and 35 then 'Young Adult'
        when age between 36 and 60 then 'Adult'
        else 'Senior'
    end as age_group
from {{ source('raw', 'customers') }}
