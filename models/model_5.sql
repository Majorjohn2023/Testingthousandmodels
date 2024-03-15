{{ config(materialized='table') }}

select m.*, t.* from { ref('model_4') } m join supplier t on m.l_suppkey = t.s_suppkey