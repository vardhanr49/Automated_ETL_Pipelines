# 🔧 Azure Blob to Azure SQL - ETL Pipeline with CI/CD using GitHub Actions

A complete end-to-end data engineering project that demonstrates how to build an ETL pipeline from Azure Blob Storage to Azure SQL Database using Azure Data Factory. The deployment and infrastructure provisioning are fully automated using GitHub Actions and Terraform.

---

## ✅ What This Project Does

- 📁 Uploads `.csv` file to **Azure Blob Storage**
- 🔄 Uses **Azure Data Factory (ADF)** to move data to **Azure SQL Database**
- 🚀 Automates deployment via **GitHub Actions CI/CD**
- ☁️ Provisions all resources using **Terraform**

---

## 📝 Step-by-Step Plan

### 🟢 Step 1: Prepare Sample Data

- Create a file named `sample_data.csv` containing test records (e.g., user or sales data)
- Add the file to your repository root

### 🟢 Step 2: Write Terraform Code

In the `/terraform` directory, create code to provision:

- Azure Resource Group  
- Azure Storage Account (Blob)  
- Azure SQL Server & Database  
- Azure Data Factory  

> 🗂️ Use files like `main.tf`, `variables.tf`, `outputs.tf`, and `provider.tf` for organizing your Terraform code.

### 🟢 Step 3: Create ADF Pipeline

In the `/adf` folder, define a simple pipeline JSON (`pipeline.json`) that:

- Uses a Blob Storage linked service as a source
- Uses an Azure SQL Database linked service as a sink
- Performs a copy activity from blob to table

### 🟢 Step 4: Create GitHub Actions Workflow

Create `.github/workflows/deploy.yaml` to:

- Run Terraform commands:
  ```bash
  terraform init
  terraform plan
  terraform apply
### 🟢 Step 5: Test End-to-End

- Upload the `sample_data.csv` file to the Azure Blob container
- Trigger the ADF pipeline from Azure Portal or GitHub workflow
- Query Azure SQL Database to verify the data has been loaded successfully

---

## 🎯 What You Learn

- ✅ Terraform basics for deploying Azure resources (Blob, SQL, ADF)
- ✅ How to build ADF pipelines for ingesting blob data into SQL
- ✅ Setting up CI/CD using GitHub Actions for Infrastructure + Pipeline deployment
- ✅ Testing and validating an end-to-end ETL workflow in Azure

### Note: I took help from open AI for writing this project.
