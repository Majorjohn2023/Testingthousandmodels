{{ config(materialized='table') }}

select m.*, t.* from { ref('model_822') } m join customer t on m.key = t.key