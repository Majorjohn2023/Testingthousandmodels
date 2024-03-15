{{ config(materialized='table') }}

SELECT m.*, t.*
FROM {{ ref('model_421') }} m
JOIN snowflake_sample_data.tpch_sf1.orders t ON m.l_orderkey = t.o_orderkey