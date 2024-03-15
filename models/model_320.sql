{{ config(materialized='table') }}

select m.*, t.* from { ref('model_319') } m join supplier t on m.key = t.key