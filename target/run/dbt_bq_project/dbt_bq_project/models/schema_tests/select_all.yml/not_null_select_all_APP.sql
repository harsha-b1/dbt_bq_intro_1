select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select APP
from `dbt-bq-project-407212`.`playstore_dataset`.`select_all`
where APP is null



      
    ) dbt_internal_test