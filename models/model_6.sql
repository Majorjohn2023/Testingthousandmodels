{{ config(materialized='table') }}

select m.*, t.* from { ref('model_5') } m join partsupp t on m.l_partkey = t.ps_partkey and m.l_suppkey = t.ps_suppkey