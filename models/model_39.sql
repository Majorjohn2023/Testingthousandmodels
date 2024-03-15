{{ config(materialized='table') }}

select m.*, t.* from { ref('model_38') } m join part t on m.key = t.key