{{ config(materialized='table') }}

select m.*, t.* from { ref('model_364') } m join supplier t on m.key = t.key