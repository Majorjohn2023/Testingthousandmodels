{{ config(materialized='table') }}

select m.*, t.* from { ref('model_239') } m join supplier t on m.key = t.key