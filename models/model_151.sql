{{ config(materialized='table') }}

SELECT m.*, t.*
FROM {{ ref('model_150') }} m
JOIN snowflake_sample_data.tpch_sf1.partsupp t ON m.l_partkey = t.ps_partkey and m.l_suppkey = t.ps_suppkey