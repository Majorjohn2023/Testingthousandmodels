{{ config(materialized='table') }}

select m.*, t.* from { ref('model_149') } m join supplier t on m.key = t.key