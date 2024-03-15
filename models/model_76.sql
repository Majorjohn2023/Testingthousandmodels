{{ config(materialized='table') }}

select m.*, t.* from { ref('model_75') } m join partsupp t on m.key = t.key