
  
    

    create or replace table `dbt-bq-project-407212`.`playstore_dataset`.`app_summary_by_category`
      
    
    

    OPTIONS()
    as (
      WITH app_data AS (
    SELECT
        Category,
        
    ROUND(AVG(IF(IS_NAN(Rating), NULL, Rating)), 2)
 as avg_rating,
        SUM(Reviews) as total_reviews
    FROM `dbt-bq-project-407212`.`playstore_dataset`.`select_all`
    GROUP BY Category
)

SELECT
    Category,
    avg_rating,
    total_reviews
FROM app_data
ORDER BY avg_rating DESC, total_reviews DESC
    );
  