resource "lxd_container" "this" {
  name    = var.container_name
  image   = var.image
  project = var.project_name
  profiles = [var.profile_name]

  # Configuração de recursos básicos
  config {
    "limits.cpu"    = var.cpu
    "limits.memory" = var.memory
  }
}
