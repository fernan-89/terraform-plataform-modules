variable "project_id" { type = string }
variable "username" { type = string }
variable "password" { type = string; sensitive = true }
variable "database_name" { type = string }
variable "collection_names" { type = list(string); description = "Lista informativa para documentação" }
