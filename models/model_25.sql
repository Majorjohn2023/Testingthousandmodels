{{ config(materialized='table') }}

select m.*, t.* from { ref('model_24') } m join supplier t on m.key = t.key