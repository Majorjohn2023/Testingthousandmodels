{{ config(materialized='table') }}

select m.*, t.* from { ref('model_846') } m join orders t on m.key = t.key