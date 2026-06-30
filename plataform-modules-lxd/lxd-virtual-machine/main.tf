resource "lxd_instance" "this" {
  name    = var.vm_name
  image   = var.image
  project = var.project_name
  profiles = [var.profile_name]
  
  # Define que é uma Virtual Machine (e não container)
  type = "virtual-machine"

  config {
    "limits.cpu"    = var.cpu
    "limits.memory" = var.memory
  }
}
