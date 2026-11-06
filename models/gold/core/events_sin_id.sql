{% set columnas_exc = ['EVENT_ID'] %}
{% set my_set = set(columnas_exc) %}

select
{{ dbt_utils.star(from=ref('fct_events'), except=my_set) }}
from {{ ref('fct_events') }}