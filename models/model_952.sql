{{ config(materialized='table') }}

select m.*, t.* from { ref('model_951') } m join orders t on m.key = t.key