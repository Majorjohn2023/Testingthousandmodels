{{ config(materialized='table') }}

select m.*, t.* from { ref('model_851') } m join orders t on m.key = t.key