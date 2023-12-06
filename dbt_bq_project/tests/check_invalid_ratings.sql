SELECT *
FROM {{ ref('select_all') }}
WHERE RATING < 0 OR RATING > 5
