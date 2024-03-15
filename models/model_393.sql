{{ config(materialized='table') }}

select m.*, t.* from { ref('model_392') } m join customer t on m.key = t.key