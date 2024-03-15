{{ config(materialized='table') }}

SELECT * FROM {{ ref('model_355') }}