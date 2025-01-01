{{
    config(
            materialized = "table",
            table_format = "iceberg",
            external_volume = "iceberg_external_volume"
    )
}}

select * from {{ ref("orders") }}