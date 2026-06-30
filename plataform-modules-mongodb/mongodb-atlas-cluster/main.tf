resource "mongodbatlas_cluster" "this" {
  project_id   = var.project_id
  name         = var.cluster_name
  cluster_type = "REPLICASET"
  
  provider_name               = "AWS"
  provider_region_name        = var.region
  provider_instance_size_name = var.instance_size
  
  backing_provider_name = "AWS"
  
  # Segurança: IP Access List (deve ser restrito)
  # Em produção, prefira Private Link ou VPC Peering
  provider_auto_scaling_compute_enabled = true
}
