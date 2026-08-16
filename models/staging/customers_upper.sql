select
    customer_id,
    {{ to_upper('customer_name') }} as customer_name
from {{ ref('stg_customers') }}
