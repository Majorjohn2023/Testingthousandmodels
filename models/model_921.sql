{{ config(materialized='table') }}

select m.*, t.* from { ref('model_920') } m join partsupp t on m.key = t.key