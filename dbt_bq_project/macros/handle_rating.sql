{% macro handle_rating(rating_column) %}
    ROUND(AVG(IF(IS_NAN({{ rating_column }}), NULL, {{ rating_column }})), 2)
{% endmacro %}