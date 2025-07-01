variable "resource_group_name" {
  default = "kml_rg_main-8eacbc90a5c14e6b"
  
}

variable "storage_account_name" {
  default = "devopsdatastorage"
}

variable "location" {
  default = "East US"
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
