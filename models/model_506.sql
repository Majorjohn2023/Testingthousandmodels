{{ config(materialized='table') }}

select m.*, t.* from { ref('model_505') } m join partsupp t on m.key = t.key