variable "vm_name"      { type = string }
variable "image"        { type = string; default = "images:ubuntu/22.04" }
variable "project_name" { type = string }
variable "pci_address"  { type = string; description = "Endereco PCI da GPU (ex: 0000:01:00.0)" }
variable "cpu"          { type = string; default = "4" }
variable "memory"       { type = string; default = "8GB" }
