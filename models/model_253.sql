{{ config(materialized='table') }}

select m.*, t.* from { ref('model_252') } m join customer t on m.key = t.key