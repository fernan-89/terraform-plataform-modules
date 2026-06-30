resource "aws_glue_job" "this" {
  name     = var.job_name
  role_arn = var.role_arn

  command {
    script_location = "s3://Green{var.script_bucket}/scripts/Green{var.script_name}"
    python_version  = "3"
  }

  default_arguments = {
    "--TempDir" = "s3://Green{var.script_bucket}/temp/"
  }

  tags = var.tags
}
