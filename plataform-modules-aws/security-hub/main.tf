resource "aws_securityhub_account" "this" {}

# Habilita o standard de conformidade CIS AWS Foundations
resource "aws_securityhub_standards_subscription" "cis" {
  depends_on    = [aws_securityhub_account.this]
  standards_arn = "arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0"
}

# Habilita o standard de melhores práticas da AWS
resource "aws_securityhub_standards_subscription" "aws_foundational" {
  depends_on    = [aws_securityhub_account.this]
  standards_arn = "arn:aws:securityhub:::ruleset/aws-foundational-security-best-practices/v/1.0.0"
}
