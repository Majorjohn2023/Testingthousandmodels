{{ config(materialized='table') }}

select m.*, t.* from { ref('model_773') } m join part t on m.key = t.key