{{ config(materialized='table') }}

SELECT * FROM {{ ref('model_9') }} --comment