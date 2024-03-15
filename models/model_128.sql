{{ config(materialized='table') }}

select m.*, t.* from { ref('model_127') } m join customer t on m.key = t.key