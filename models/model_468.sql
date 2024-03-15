{{ config(materialized='table') }}

select m.*, t.* from { ref('model_467') } m join customer t on m.key = t.key