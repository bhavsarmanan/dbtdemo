{{ config(materialized='view') }}

with source_data as (

    Select * from {{ source('raw','raw_orders') }}

)

select *
from source_data