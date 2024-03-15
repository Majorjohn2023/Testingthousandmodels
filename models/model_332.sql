{{ config(materialized='table') }}

select m.*, t.* from { ref('model_331') } m join orders t on m.key = t.key