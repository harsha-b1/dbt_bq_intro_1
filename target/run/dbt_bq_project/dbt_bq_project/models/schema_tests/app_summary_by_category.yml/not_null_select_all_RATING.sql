select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select RATING
from `dbt-bq-project-407212`.`playstore_dataset`.`select_all`
where RATING is null



      
    ) dbt_internal_test