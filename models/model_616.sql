{{ config(materialized='table') }}

select m.*, t.* from { ref('model_615') } m join partsupp t on m.key = t.key