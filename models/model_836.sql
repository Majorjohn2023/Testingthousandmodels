{{ config(materialized='table') }}

select m.*, t.* from { ref('model_835') } m join partsupp t on m.key = t.key