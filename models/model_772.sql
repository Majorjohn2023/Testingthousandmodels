{{ config(materialized='table') }}

select m.*, t.* from { ref('model_771') } m join orders t on m.key = t.key