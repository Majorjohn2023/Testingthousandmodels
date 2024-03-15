{{ config(materialized='table') }}

select m.*, t.* from { ref('model_976') } m join orders t on m.key = t.key