{{ config(materialized='table') }}

select m.*, t.* from { ref('model_881') } m join orders t on m.key = t.key