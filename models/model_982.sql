{{ config(materialized='table') }}

select m.*, t.* from { ref('model_981') } m join orders t on m.key = t.key