{{ config(materialized='table') }}

select m.*, t.* from { ref('model_991') } m join orders t on m.key = t.key