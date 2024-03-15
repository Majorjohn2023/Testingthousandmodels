{{ config(materialized='table') }}

select m.*, t.* from { ref('model_644') } m join supplier t on m.key = t.key