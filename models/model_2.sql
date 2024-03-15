{{ config(materialized='table') }}

select m.*, t.* from { ref('model_1') } m join orders t on m.l_orderkey = t.o_orderkey