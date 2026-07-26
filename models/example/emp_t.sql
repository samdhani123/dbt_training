{{ config(materialized='table') }}

select * from DBT_SOURCE.D_SOURCE.emp