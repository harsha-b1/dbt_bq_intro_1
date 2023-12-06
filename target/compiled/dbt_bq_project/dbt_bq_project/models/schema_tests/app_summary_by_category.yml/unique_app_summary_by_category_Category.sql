
    
    

with dbt_test__target as (

  select Category as unique_field
  from `dbt-bq-project-407212`.`playstore_dataset`.`app_summary_by_category`
  where Category is not null

)

select
    unique_field,
    count(*) as n_records

from dbt_test__target
group by unique_field
having count(*) > 1


