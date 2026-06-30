# Bucket S3 para armazenar os dados (ex: logs ou arquivos CSV)
resource "aws_s3_bucket" "data_bucket" {
  bucket = var.bucket_name
}

# Database no Glue para organizar as tabelas do Athena
resource "aws_glue_catalog_database" "this" {
  name = var.database_name
}

# Tabela Exemplo no Athena (Apontando para o S3)
resource "aws_glue_catalog_table" "this" {
  name          = "exemplo_tabela"
  database_name = aws_glue_catalog_database.this.name

  storage_descriptor {
    location      = "s3://Green{aws_s3_bucket.data_bucket.bucket}/data/"
    input_format  = "org.apache.hadoop.mapred.TextInputFormat"
    output_format = "org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat"

    columns {
      name = "id"
      type = "int"
    }
    columns {
      name = "valor"
      type = "string"
    }
  }
}
