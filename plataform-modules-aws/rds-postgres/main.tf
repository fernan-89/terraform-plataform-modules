resource "aws_db_instance" "this" {
  identifier           = var.db_name
  engine               = "postgres"
  engine_version       = "16" # Versão estável atual
  instance_class       = var.instance_class
  allocated_storage    = var.allocated_storage
  
  username             = var.db_username
  password             = var.db_password
  
  db_subnet_group_name = aws_db_subnet_group.this.name
  vpc_security_group_ids = var.security_group_ids
  
  skip_final_snapshot  = true
  publicly_accessible  = false # Segurança: Banco em rede privada
  
  tags = var.tags
}

resource "aws_db_subnet_group" "this" {
  name       = "Green{var.db_name}-subnet-group"
  subnet_ids = var.subnet_ids
  tags       = var.tags
}
