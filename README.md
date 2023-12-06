## DBT Project Implementation with BigQuery on GCP

### Overview:

This document outlines the steps taken to set up and implement a DBT (Data Build Tool) project using Google BigQuery as the data warehouse. The project involved sourcing data from a Kaggle dataset, creating a BigQuery dataset and table, and using DBT for data transformation, testing, and documentation.

### GCP Project Creation:

- Created a new Google Cloud Platform (GCP) project.
- Enabled BigQuery API within the GCP project.

### BigQuery Dataset and Table:

- Created a new dataset in BigQuery.
- Imported data from a [Kaggle CSV dataset ](https://www.kaggle.com/datasets/lava18/google-play-store-apps) into a BigQuery table. 

### Service Account and Permissions:

- Created a service account in GCP with BigQuery Admin permissions.
- Generated and downloaded a JSON key pair for the service account to authenticate and authorize DBT operations.

### Initialising DBT Project:

- Initialized a new DBT project `dbt init project_name`.
- Set up the DBT project directory structure with the necessary configurations.


### DBT Configuration:

- Configured the `dbt_project.yml` file to specify the BigQuery connection using the service account credentials.
- Defined `source-paths` and `test-paths` to point to the correct directories for models and tests.

### SQL Query and Model Creation:

- Created an initial SQL query for data transformation in the `models` folder.
- Utilized DBT's model feature to transform and manipulate the data sourced from the BigQuery table.

### Jinja Templating and Macros:

- Implemented Jinja templating in SQL queries for dynamic SQL generation and to reference DBT models and sources.
- Created custom macros to encapsulate reusable logic and improve code efficiency and readability under `macros`.

### Schema Tests:

- Created schema tests in `.yml` files associated with models to validate data integrity like `not_null`, and `unique` constraints.

### Custom Data Tests:

- Developed custom SQL queries in the `tests` directory to perform specific data validation checks beyond the default schema tests like checking if Rating values are with in range between 0 and 5.

### Documentation:

- Documented the DBT models, including descriptions of each model and their columns.
- Generated project documentation using DBT's `docs generate` feature, creating a web-based documentation site for easy reference and understanding of the data models and relationships.

