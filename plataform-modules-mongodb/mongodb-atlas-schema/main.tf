# No MongoDB Atlas, não criamos a database via Terraform, 
# mas garantimos que o usuário tenha permissão sobre ela.
# Para criar collections e documentos, usamos scripts de migração ou a aplicação.

resource "mongodbatlas_database_user" "app_user" {
  username           = var.username
  password           = var.password
  project_id         = var.project_id
  auth_database_name = "admin"

  roles {
    role_name     = "readWrite"
    database_name = var.database_name
  }
}
