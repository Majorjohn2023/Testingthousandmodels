{{ config(materialized='table') }}

select m.*, t.* from { ref('model_268') } m join part t on m.key = t.key