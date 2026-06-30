# Cria o escopo isolado de projeto no LXD
resource "lxd_project" "this" {
  name = var.project_name
  description = "Espaco de projeto isolado para: Green{var.project_name}"
  
  # Configuração de limites e restrições para o projeto
  config {
    "features.images"       = "true"
    "features.profiles"     = "true"
    "features.networks"     = "true"
    "limits.containers"     = var.max_instances
  }
}

# Rede interna para este espaço
resource "lxd_network" "project_net" {
  project = lxd_project.this.name
  name    = "net-Green{var.project_name}"
  type    = "bridge"
  config = {
    "ipv4.address" = var.ipv4_subnet
    "ipv4.nat"     = "true"
  }
}
