variable "vm_name"      { type = string }
variable "image"        { type = string; default = "images:ubuntu/22.04" }
variable "project_name" { type = string }
variable "profile_name" { type = string }
variable "cpu"          { type = string; default = "2" }
variable "memory"       { type = string; default = "2GB" }
