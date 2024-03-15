{{ config(materialized='table') }}

select m.*, t.* from { ref('model_162') } m join customer t on m.key = t.key