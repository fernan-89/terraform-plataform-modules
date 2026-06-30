variable "project_name" { type = string }
variable "parent_interface" { type = string; description = "Interface fisica do host (ex: eth0)" }
variable "storage_pool" { type = string; default = "default" }
