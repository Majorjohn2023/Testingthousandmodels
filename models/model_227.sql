{{ config(materialized='table') }}

select m.*, t.* from { ref('model_226') } m join orders t on m.key = t.key