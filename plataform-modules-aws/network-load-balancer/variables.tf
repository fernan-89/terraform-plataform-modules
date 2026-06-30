variable "lb_name" { type = string }
variable "internal" { type = bool; default = true }
variable "subnet_ids" { type = list(string) }
variable "port" { type = number; default = 80 }
variable "target_group_arn" { type = string }
variable "tags" { type = map(string) }
