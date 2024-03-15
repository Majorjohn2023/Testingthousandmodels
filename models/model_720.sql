{{ config(materialized='table') }}

select m.*, t.* from { ref('model_719') } m join supplier t on m.key = t.key