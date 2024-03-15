{{ config(materialized='table') }}

select m.*, t.* from { ref('model_203') } m join part t on m.key = t.key