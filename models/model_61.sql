{{ config(materialized='table') }}

select m.*, t.* from { ref('model_60') } m join partsupp t on m.key = t.key