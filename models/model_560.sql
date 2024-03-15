{{ config(materialized='table') }}

select m.*, t.* from { ref('model_559') } m join supplier t on m.key = t.key