variable "project_id" { type = string }
variable "cluster_name" { type = string }
variable "region" { type = string; default = "SA_EAST_1" }
variable "instance_size" { type = string; default = "M10" }
variable "allowed_ip_cidr" { type = string; description = "Ex: 0.0.0.0/0 para publico total ou um IP especifico" }
