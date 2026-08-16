{{ config(materialized='view',alias='orders_with_tax') }}

select
    order_id,
    amount,
    {{ calculate_tax('amount') }} as tax_amount
from {{ source('raw','orders') }}
