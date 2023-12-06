
    
    

with dbt_test__target as (

  select CATEGORY as unique_field
  from `dbt-bq-project-407212`.`playstore_dataset`.`select_all`
  where CATEGORY is not null

)

select
    unique_field,
    count(*) as n_records

from dbt_test__target
group by unique_field
having count(*) > 1


