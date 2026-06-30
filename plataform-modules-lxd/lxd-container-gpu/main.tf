resource "lxd_container" "this" {
  name    = var.container_name
  image   = var.image
  project = var.project_name
  profiles = [var.profile_name]

  # Configuração para passar o dispositivo de GPU do host para o container
  device {
    name = "gpu"
    type = "gpu"
    properties = {
      "vendorid" = "10de" # ID da NVIDIA
    }
  }

  # Necessário para os drivers NVIDIA funcionarem dentro do container
  config {
    "nvidia.runtime" = "true"
  }
}
