{{ config(materialized='table') }}

select m.*, t.* from { ref('model_709') } m join supplier t on m.key = t.key