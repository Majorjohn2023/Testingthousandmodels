{{ config(materialized='table') }}

select m.*, t.* from { ref('model_635') } m join partsupp t on m.key = t.key