variable "container_name" { type = string }
variable "image"          { type = string; default = "ubuntu:22.04" }
variable "project_name"   { type = string }
variable "profile_name"   { type = string }
variable "cpu"            { type = string; default = "1" }
variable "memory"         { type = string; default = "1GB" }
