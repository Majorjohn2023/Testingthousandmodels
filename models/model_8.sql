{{ config(materialized='table') }}

select m.*, t.* from { ref('model_7') } m join customer t on m.key = t.key