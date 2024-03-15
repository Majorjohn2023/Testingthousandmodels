{{ config(materialized='table') }}

select m.*, t.* from { ref('model_889') } m join supplier t on m.key = t.key