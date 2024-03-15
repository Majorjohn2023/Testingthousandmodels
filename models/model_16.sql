{{ config(materialized='table') }}

select m.*, t.* from { ref('model_15') } m join partsupp t on m.key = t.key