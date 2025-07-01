
#🔧 Project Title:
"Azure Blob to Azure SQL - ETL Pipeline with CI/CD using GitHub Actions"

##✅ What This Project Does:
Upload a .csv file to Azure Blob Storage.
Azure Data Factory (ADF) copies that data to Azure SQL Database.
CI/CD using GitHub Actions deploys ADF pipeline and SQL schema.
Uses Terraform to provision Azure resources.

##📝 Step-by-Step Plan
🟢 Step 1: Prepare Sample Data
Create sample_data.csv with sample user or sales data and add that file

🟢 Step 2: Write Terraform Code
Provision:
Azure Resource Group
Azure Blob Storage
Azure SQL Database
Azure Data Factory
You’ll write all this in the /terraform folder.

🟢 Step 3: Create ADF Pipeline
Create a simple ADF pipeline JSON that:
Reads from Blob (Linked Service)
Writes to SQL (Linked Service + Table)
Use adf/pipeline.json.

🟢 Step 4: Create GitHub Actions Workflow
In .github/workflows/deploy.yaml, automate:
Terraform init/plan/apply
Publish ADF pipeline using az cli or ADF Tools

🟢 Step 5: Test End-to-End
Upload the .csv file to Blob Storage
Run the ADF pipeline (manually or triggered)
Confirm the data appears in Azure SQL table

##🎯 What You Learn
Terraform basics with Azure
ADF pipeline creation + deployment
GitHub Actions CI/CD

