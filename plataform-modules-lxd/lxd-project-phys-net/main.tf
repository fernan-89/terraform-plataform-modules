# Define o projeto
resource "lxd_project" "this" {
  name = var.project_name
}

# Perfil para instâncias que conectam diretamente na rede física
resource "lxd_profile" "phys_net" {
  name    = "phys-net-profile"
  project = lxd_project.this.name

  device {
    name = "eth0"
    type = "nic"
    properties = {
      "nictype" = "macvlan"
      "parent"  = var.parent_interface # Ex: "eth0" ou "enp3s0" do host
    }
  }

  device {
    name = "root"
    type = "disk"
    properties = {
      "path" = "/"
      "pool" = var.storage_pool
    }
  }
}
