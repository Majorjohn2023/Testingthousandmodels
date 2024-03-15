{{ config(materialized='table') }}

select m.*, t.* from { ref('model_243') } m join part t on m.key = t.key