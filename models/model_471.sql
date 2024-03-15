{{ config(materialized='table') }}

select m.*, t.* from { ref('model_470') } m join partsupp t on m.key = t.key