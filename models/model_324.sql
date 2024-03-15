{{ config(materialized='table') }}

SELECT m.*, t.*
FROM {{ ref('model_323') }} m
JOIN snowflake_sample_data.tpch_sf1.part t ON m.l_partkey = t.p_partkey