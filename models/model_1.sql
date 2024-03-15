{{ config(materialized='table') }}

select * from { ref('lineitem') }