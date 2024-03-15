{{ config(materialized='table') }}

select m.*, t.* from { ref('model_641') } m join orders t on m.key = t.key