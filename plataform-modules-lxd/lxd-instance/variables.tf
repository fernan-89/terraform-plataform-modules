variable "instance_name" { type = string }
variable "image_alias" { type = string; default = "ubuntu:22.04" }
variable "cpu_cores" { type = string; default = "1" }
variable "memory" { type = string; default = "512MB" }
variable "network_name" { type = string; default = "lxdbr0" }
