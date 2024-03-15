{{ config(materialized='table') }}

select m.*, t.* from { ref('model_605') } m join partsupp t on m.key = t.key