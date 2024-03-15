{{ config(materialized='table') }}

SELECT m.*, t.*
FROM {{ ref('model_594') }} m
JOIN snowflake_sample_data.tpch_sf1.supplier t ON m.l_suppkey = t.s_suppkey