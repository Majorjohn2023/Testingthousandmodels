{{ config(materialized='table') }}

select m.*, t.* from { ref('model_311') } m join orders t on m.key = t.key