variable "function_name" { type = string }
variable "role_arn" { type = string }
variable "filename" { type = string }
variable "subnet_ids" { type = list(string) }
variable "security_group_ids" { type = list(string) }
variable "tags" { type = map(string) }
