{{ config(materialized='table') }}

select m.*, t.* from { ref('model_192') } m join customer t on m.key = t.key