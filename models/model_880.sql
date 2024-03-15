{{ config(materialized='table') }}

select m.*, t.* from { ref('model_879') } m join supplier t on m.key = t.key