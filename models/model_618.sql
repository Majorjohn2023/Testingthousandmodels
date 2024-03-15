{{ config(materialized='table') }}

select m.*, t.* from { ref('model_617') } m join customer t on m.key = t.key