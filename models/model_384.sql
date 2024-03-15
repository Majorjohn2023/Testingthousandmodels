{{ config(materialized='table') }}

select m.*, t.* from { ref('model_383') } m join part t on m.key = t.key