{{ config(materialized='table') }}

select m.*, t.* from { ref('model_708') } m join part t on m.key = t.key