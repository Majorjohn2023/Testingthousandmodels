{{ config(materialized='table') }}

SELECT m.*, t.*
FROM {{ ref('model_157') }} m
JOIN snowflake_sample_data.tpch_sf1.customer t ON m.l_custkey = t.c_custkey