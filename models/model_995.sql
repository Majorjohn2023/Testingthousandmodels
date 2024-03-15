{{ config(materialized='table') }}

select m.*, t.* from { ref('model_994') } m join supplier t on m.key = t.key