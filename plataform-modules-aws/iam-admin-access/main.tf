# Grupo de Administradores
resource "aws_iam_group" "admin" {
  name = "Administrators"
}

# Política de Administrador (Managed Policy)
resource "aws_iam_group_policy_attachment" "admin_access" {
  group      = aws_iam_group.admin.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

# Usuário Admin
resource "aws_iam_user" "admin_user" {
  name = var.username
}

# Adicionar usuário ao grupo
resource "aws_iam_group_membership" "admin_team" {
  name = "admin-membership"
  users = [aws_iam_user.admin_user.name]
  group = aws_iam_group.admin.name
}
