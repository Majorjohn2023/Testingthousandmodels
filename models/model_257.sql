{{ config(materialized='table') }}

select m.*, t.* from { ref('model_256') } m join orders t on m.key = t.key