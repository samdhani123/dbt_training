{{ config(materialized='view') }}

select * from DBT_SOURCE.D_SOURCE.emp