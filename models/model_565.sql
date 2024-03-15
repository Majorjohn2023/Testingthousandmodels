{{ config(materialized='table') }}

select m.*, t.* from { ref('model_564') } m join supplier t on m.key = t.key