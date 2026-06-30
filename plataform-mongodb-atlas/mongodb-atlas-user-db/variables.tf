variable "project_id" { type = string }
variable "username" { type = string }
variable "password" { type = string; sensitive = true }
variable "database_name" { type = string }
