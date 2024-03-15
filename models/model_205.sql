{{ config(materialized='table') }}

select m.*, t.* from { ref('model_204') } m join supplier t on m.key = t.key