{{ config(materialized='table') }}

select m.*, t.* from { ref('model_151') } m join orders t on m.key = t.key