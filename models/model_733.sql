{{ config(materialized='table') }}

select m.*, t.* from { ref('model_732') } m join customer t on m.key = t.key