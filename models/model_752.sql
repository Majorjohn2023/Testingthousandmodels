{{ config(materialized='table') }}

select m.*, t.* from { ref('model_751') } m join orders t on m.key = t.key