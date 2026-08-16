select
    age_group,
    count(*) as customer_count
from {{ ref('customer_age_groups') }}
group by age_group