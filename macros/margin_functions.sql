{% macro margin_percent(turnover, purchase_cost, precision=2) %}
   ROUND( SAFE_DIVIDE( ({{ turnover }} - {{ purchase_cost }}) , {{ turnover }} ) , {{ precision }})
{% endmacro %}


{% macro margin(revenue, quantity, purchSE_PRICE) %}
   {{ revenue }} - {{ quantity }}*{{ purchSE_PRICE }}
{% endmacro %}
