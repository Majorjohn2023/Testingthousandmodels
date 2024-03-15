{{ config(materialized='table') }}

select m.*, t.* from { ref('model_613') } m join part t on m.key = t.key