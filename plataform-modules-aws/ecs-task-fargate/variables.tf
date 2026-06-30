variable "task_name" { type = string }
variable "service_name" { type = string }
variable "cluster_id" { type = string }
variable "container_image" { type = string }
variable "container_port" { type = number }
variable "cpu" { type = string; default = "256" }
variable "memory" { type = string; default = "512" }
variable "execution_role_arn" { type = string }
variable "subnet_ids" { type = list(string) }
variable "security_group_ids" { type = list(string) }
variable "target_group_arn" { type = string }
