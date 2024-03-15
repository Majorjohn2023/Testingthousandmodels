{{ config(materialized='table') }}

select m.*, t.* from { ref('model_123') } m join part t on m.key = t.key