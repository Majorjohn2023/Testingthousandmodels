{{ config(materialized='table') }}

select m.*, t.* from { ref('model_553') } m join part t on m.key = t.key