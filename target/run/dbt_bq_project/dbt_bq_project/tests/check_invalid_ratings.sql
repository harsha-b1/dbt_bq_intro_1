select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      SELECT *
FROM `dbt-bq-project-407212`.`playstore_dataset`.`select_all`
WHERE RATING < 0 OR RATING > 5
      
    ) dbt_internal_test