{{ config(materialized='table') }}

select m.*, t.* from { ref('model_959') } m join supplier t on m.key = t.key