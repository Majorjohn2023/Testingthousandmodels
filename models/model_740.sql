{{ config(materialized='table') }}

select m.*, t.* from { ref('model_739') } m join supplier t on m.key = t.key