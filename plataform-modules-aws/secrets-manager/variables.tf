variable "secret_name" { type = string }
variable "description" { type = string; default = "Managed by Terraform" }
variable "secret_values" { type = map(string); sensitive = true }
variable "tags" { type = map(string) }
