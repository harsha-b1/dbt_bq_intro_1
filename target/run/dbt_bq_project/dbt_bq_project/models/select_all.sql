
  
    

    create or replace table `dbt-bq-project-407212`.`playstore_dataset`.`select_all`
      
    
    

    OPTIONS()
    as (
      SELECT * FROM `dbt-bq-project-407212.playstore_dataset.table_01`
    );
  