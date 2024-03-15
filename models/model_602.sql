{{ config(materialized='table') }}

select m.*, t.* from { ref('model_601') } m join orders t on m.key = t.key