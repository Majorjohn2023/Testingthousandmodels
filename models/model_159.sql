{{ config(materialized='table') }}

select m.*, t.* from { ref('model_158') } m join part t on m.key = t.key