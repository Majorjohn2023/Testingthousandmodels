{{ config(materialized='table') }}

SELECT * FROM snowflake_sample_data.tpch_sf1.lineitem