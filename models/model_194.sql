{{ config(materialized='table') }}

select m.*, t.* from { ref('model_193') } m join part t on m.key = t.key