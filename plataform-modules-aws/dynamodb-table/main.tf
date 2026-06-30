resource "aws_dynamodb_table" "this" {
  name           = var.table_name
  billing_mode   = var.billing_mode
  hash_key       = var.hash_key

  attribute {
    name = var.hash_key
    type = "S" # Assumindo String como padrão para a chave primária
  }

  tags = var.tags
}
