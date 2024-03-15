{{ config(materialized='table') }}

select m.*, t.* from { ref('model_905') } m join partsupp t on m.key = t.key