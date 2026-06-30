resource "aws_subnet" "private" {
  vpc_id     = var.vpc_id
  cidr_block = var.private_subnet_cidr
  tags       = merge(var.tags, { Name = "Green{var.subnet_name}-private" })
}

# Tabela de rotas para garantir que seja privada (sem rota para IGW)
resource "aws_route_table" "private" {
  vpc_id = var.vpc_id
  tags   = merge(var.tags, { Name = "Green{var.subnet_name}-rt-private" })
}

resource "aws_route_table_association" "private" {
  subnet_id      = aws_subnet.private.id
  route_table_id = aws_route_table.private.id
}
