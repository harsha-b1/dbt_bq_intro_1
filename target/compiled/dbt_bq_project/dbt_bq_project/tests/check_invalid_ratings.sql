SELECT *
FROM `dbt-bq-project-407212`.`playstore_dataset`.`select_all`
WHERE RATING < 0 OR RATING > 5