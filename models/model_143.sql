{{ config(materialized='table') }}

select m.*, t.* from { ref('model_142') } m join customer t on m.key = t.key