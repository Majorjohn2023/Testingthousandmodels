{{ config(materialized='table') }}

select m.*, t.* from { ref('model_454') } m join supplier t on m.key = t.key