{{ config(materialized='table') }}

select m.*, t.* from { ref('model_992') } m join customer t on m.key = t.key