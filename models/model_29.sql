{{ config(materialized='table') }}

select m.*, t.* from { ref('model_28') } m join part t on m.key = t.key