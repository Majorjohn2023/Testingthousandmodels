{{ config(materialized='table') }}

select m.*, t.* from { ref('model_198') } m join part t on m.key = t.key