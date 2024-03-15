{{ config(materialized='table') }}

select m.*, t.* from { ref('model_3') } m join part t on m.l_partkey = t.p_partkey