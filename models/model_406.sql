{{ config(materialized='table') }}

select m.*, t.* from { ref('model_405') } m join partsupp t on m.key = t.key