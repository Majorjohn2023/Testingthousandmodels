{{ config(materialized='table') }}

select m.*, t.* from { ref('model_947') } m join customer t on m.key = t.key