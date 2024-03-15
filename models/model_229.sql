{{ config(materialized='table') }}

select m.*, t.* from { ref('model_228') } m join part t on m.key = t.key