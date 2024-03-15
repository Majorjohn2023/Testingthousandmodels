{{ config(materialized='table') }}

select m.*, t.* from { ref('model_309') } m join supplier t on m.key = t.key