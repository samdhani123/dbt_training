{{config(materialized='table')}}

select * from 
{{ source('ANALYTICS','EMP')}}