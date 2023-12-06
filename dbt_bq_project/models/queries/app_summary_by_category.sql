WITH app_data AS (
    SELECT
        Category,
        {{ handle_rating('Rating') }} as avg_rating,
        SUM(Reviews) as total_reviews
    FROM {{ ref('select_all') }}
    GROUP BY Category
)

SELECT
    Category,
    avg_rating,
    total_reviews
FROM app_data
ORDER BY avg_rating DESC, total_reviews DESC
