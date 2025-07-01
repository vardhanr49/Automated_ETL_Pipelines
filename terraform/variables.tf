variable "resource_group_name" {
  default = "devops-data-rg"
}

variable "location" {
  default = "East US"
}

variable "storage_account_name" {
  default = "devopsdatastorage"
}

variable "container_name" {
  default = "input-data"
}

variable "sql_server_name" {
  default = "devopssqlserver123"
}

variable "sql_database_name" {
  default = "devopsdb"
}

variable "sql_admin_username" {
  default = "sqladmin"
}

variable "sql_admin_password" {
  description = "The password must meet Azure's complexity requirements."
  sensitive   = true
}
