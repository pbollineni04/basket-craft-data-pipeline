# Basket Craft Data Pipeline

This repository implements an end-to-end data pipeline using an ELT approach. Python scripts in the ELT directory extract data from MySQL and load it into a PostgreSQL raw schema, while dbt models in this project transform the data across staging, warehouse, and marts layers. Automated tests, detailed documentation, and SQL-based transformations ensure data quality and operational efficiency throughout the pipeline. After transforming the data, a Looker Studio dashboard visualizes the results with interactive charts and cross-filtering options. Key visualizations include sessions per day, heatmap tables for repeat sessions, time-series trends, and more. The unlisted dashboard link is provided below.

**Data Pipeline Diagram:**  
The diagram below illustrates the end-to-end flow of data from the source to the Looker Studio dashboard:
![Data Pipeline Diagram](path/to/data-pipeline-diagram.png)  


**Technologies and Tools:**  
- **Data Infrastructure:** AWS RDS MySQL and Postgres  
- **Development Tools:** Python, Pandas, SQLAlchemy, dbt, SQL, GitHub Codespaces  
- **Automation & Deployment:** GitHub Actions, GitHub Secrets  
- **Visualization:** Looker Studio  
- **Version Control:** Git, GitHub

**Dashboard:**  
Dashboard: [\[ LOOKER DASHBOARD LINK\]](https://lookerstudio.google.com/reporting/8e67d460-c13a-423d-880a-a6d5c5a75c8a)