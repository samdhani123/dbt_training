select
    customer_id,
    age
from  {{ source('raw', 'customers') }}
where age < 0