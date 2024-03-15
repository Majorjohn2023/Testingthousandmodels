{{ config(materialized='table') }}

select m.*, t.* from { ref('model_721') } m join orders t on m.key = t.key