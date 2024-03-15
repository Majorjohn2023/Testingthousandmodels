{{ config(materialized='table') }}

select m.*, t.* from { ref('model_826') } m join orders t on m.key = t.key