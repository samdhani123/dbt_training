{{ config(materialized='incremental') }}
SELECT *
FROM dbt_source.d_source.emp
{% if is_incremental() %}
WHERE updated_at >
(
SELECT MAX(updated_at)
FROM {{ this }}
)
{% endif %}