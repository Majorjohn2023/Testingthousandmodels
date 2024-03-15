{{ config(materialized='table') }}

select m.*, t.* from { ref('model_289') } m join supplier t on m.key = t.key