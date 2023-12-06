select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select AVERAGE
from `dbt-bq-project-407212`.`playstore_dataset`.`select_all`
where AVERAGE is null



      
    ) dbt_internal_test