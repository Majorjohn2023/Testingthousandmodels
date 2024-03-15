{{ config(materialized='table') }}

select m.*, t.* from { ref('model_381') } m join orders t on m.key = t.key