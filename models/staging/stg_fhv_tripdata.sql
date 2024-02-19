{{ config(materialized='view') }}

select * 
from {{ source('staging','fhv_non_partitoned_2019') }}
--where EXTRACT(YEAR FROM pickup_datetime) = 2019
--limit 700


-- dbt build --select <model_name> --vars '{'is_test_run': 'false'}'
--{% if var('is_test_run', default=true) %}

--  limit 100

--{% endif %}