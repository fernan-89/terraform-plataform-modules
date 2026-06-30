output "database_name" { value = aws_glue_catalog_database.this.name }
output "bucket_id" { value = aws_s3_bucket.data_bucket.id }
