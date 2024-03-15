{{ config(materialized='table') }}

select m.*, t.* from { ref('model_206') } m join orders t on m.key = t.key