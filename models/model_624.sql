{{ config(materialized='table') }}

select m.*, t.* from { ref('model_623') } m join part t on m.key = t.key