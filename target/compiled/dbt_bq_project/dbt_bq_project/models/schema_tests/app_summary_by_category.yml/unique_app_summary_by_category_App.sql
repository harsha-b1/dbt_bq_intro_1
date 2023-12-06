
    
    

with dbt_test__target as (

  select App as unique_field
  from `dbt-bq-project-407212`.`playstore_dataset`.`app_summary_by_category`
  where App is not null

)

select
    unique_field,
    count(*) as n_records

from dbt_test__target
group by unique_field
having count(*) > 1


