{{ config(materialized='table') }}

select m.*, t.* from { ref('model_897') } m join customer t on m.key = t.key