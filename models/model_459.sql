{{ config(materialized='table') }}

select m.*, t.* from { ref('model_458') } m join part t on m.key = t.key