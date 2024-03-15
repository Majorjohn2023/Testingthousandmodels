{{ config(materialized='table') }}

select m.*, t.* from { ref('model_419') } m join supplier t on m.key = t.key