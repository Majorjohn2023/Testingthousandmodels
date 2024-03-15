{{ config(materialized='table') }}

select m.*, t.* from { ref('model_156') } m join orders t on m.key = t.key