variable "lb_name" { type = string }
variable "internal" { type = bool; default = false }
variable "security_group_ids" { type = list(string) }
variable "subnet_ids" { type = list(string) }
variable "default_target_group_arn" { type = string }
variable "tags" { type = map(string) }
