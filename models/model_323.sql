{{ config(materialized='table') }}

select m.*, t.* from { ref('model_322') } m join customer t on m.key = t.key