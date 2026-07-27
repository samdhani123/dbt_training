{{config(materialized='table')}}

select * from {{source('emp','emp')}}