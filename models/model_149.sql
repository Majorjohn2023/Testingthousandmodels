{{ config(materialized='table') }}

select m.*, t.* from { ref('model_148') } m join part t on m.key = t.key