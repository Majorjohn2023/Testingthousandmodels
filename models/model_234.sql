{{ config(materialized='table') }}

select m.*, t.* from { ref('model_233') } m join part t on m.key = t.key