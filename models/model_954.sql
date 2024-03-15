{{ config(materialized='table') }}

select m.*, t.* from { ref('model_953') } m join part t on m.key = t.key