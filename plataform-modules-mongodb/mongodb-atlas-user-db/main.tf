# Criação do Banco de Dados
# O banco é criado implicitamente quando a primeira coleção é inserida, 
# mas definimos as permissões aqui para o usuário.

# Criação do Usuário
resource "mongodbatlas_database_user" "this" {
  username           = var.username
  password           = var.password
  project_id         = var.project_id
  auth_database_name = "admin"

  roles {
    role_name     = "readWrite"
    database_name = var.database_name
  }
}
