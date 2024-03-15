{{ config(materialized='table') }}

select m.*, t.* from { ref('model_210') } m join partsupp t on m.key = t.key