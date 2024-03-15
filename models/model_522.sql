{{ config(materialized='table') }}

select m.*, t.* from { ref('model_521') } m join orders t on m.key = t.key