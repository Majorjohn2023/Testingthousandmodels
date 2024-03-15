{{ config(materialized='table') }}

select m.*, t.* from { ref('model_896') } m join orders t on m.key = t.key