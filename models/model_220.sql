{{ config(materialized='table') }}

select m.*, t.* from { ref('model_219') } m join supplier t on m.key = t.key