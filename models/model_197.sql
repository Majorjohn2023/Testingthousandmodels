{{ config(materialized='table') }}

select m.*, t.* from { ref('model_196') } m join orders t on m.key = t.key