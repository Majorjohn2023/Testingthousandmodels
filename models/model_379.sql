{{ config(materialized='table') }}

select m.*, t.* from { ref('model_378') } m join part t on m.key = t.key