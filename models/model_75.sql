{{ config(materialized='table') }}

select m.*, t.* from { ref('model_74') } m join supplier t on m.key = t.key