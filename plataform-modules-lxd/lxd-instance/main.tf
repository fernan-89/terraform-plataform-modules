resource "lxd_container" "this" {
  name  = var.instance_name
  image = var.image_alias

  config {
    "limits.cpu"    = var.cpu_cores
    "limits.memory" = var.memory
  }

  device {
    name = "eth0"
    type = "nic"
    properties = {
      "network" = var.network_name
    }
  }
}
