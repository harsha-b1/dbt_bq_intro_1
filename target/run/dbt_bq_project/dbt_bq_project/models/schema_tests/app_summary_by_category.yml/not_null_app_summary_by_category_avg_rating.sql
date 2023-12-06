select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select avg_rating
from `dbt-bq-project-407212`.`playstore_dataset`.`app_summary_by_category`
where avg_rating is null



      
    ) dbt_internal_test