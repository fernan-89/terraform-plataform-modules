resource "mongodbatlas_cluster" "this" {
  project_id   = var.project_id
  name         = var.cluster_name
  cluster_type = "REPLICASET"
  
  provider_name               = "AWS"
  provider_region_name        = var.region
  provider_instance_size_name = var.instance_size
  backing_provider_name       = "AWS"
}

# Configuração de Acesso Público via IP Access List
resource "mongodbatlas_project_ip_access_list" "this" {
  project_id = var.project_id
  cidr_block = var.allowed_ip_cidr
  comment    = "Acesso publico permitido para este CIDR"
}
