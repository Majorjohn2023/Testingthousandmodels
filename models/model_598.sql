{{ config(materialized='table') }}

select m.*, t.* from { ref('model_597') } m join customer t on m.key = t.key