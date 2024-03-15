{{ config(materialized='table') }}

select m.*, t.* from { ref('model_2') } m join customer t on m.l_custkey = t.c_custkey