{{ config(materialized='table') }}

SELECT * FROM { ref('lineitem') }