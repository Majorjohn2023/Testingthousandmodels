{{ config(materialized='table') }}

select m.*, t.* from { ref('model_666') } m join orders t on m.key = t.key