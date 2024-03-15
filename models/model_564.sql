{{ config(materialized='table') }}

select m.*, t.* from { ref('model_563') } m join part t on m.key = t.key