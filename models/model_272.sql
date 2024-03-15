{{ config(materialized='table') }}

select m.*, t.* from { ref('model_271') } m join orders t on m.key = t.key