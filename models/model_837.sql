{{ config(materialized='table') }}

select m.*, t.* from { ref('model_836') } m join orders t on m.key = t.key