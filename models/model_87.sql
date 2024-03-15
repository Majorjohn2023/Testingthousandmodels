{{ config(materialized='table') }}

select m.*, t.* from { ref('model_86') } m join orders t on m.key = t.key