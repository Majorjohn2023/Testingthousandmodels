{{ config(materialized='table') }}

select m.*, t.* from { ref('model_696') } m join orders t on m.key = t.key