resource "aws_sns_topic" "this" {
  name = var.topic_name
  tags = var.tags
}

# Subscrição opcional (ex: enviar para uma fila SQS)
resource "aws_sns_topic_subscription" "this" {
  count     = var.sqs_target_arn != "" ? 1 : 0
  topic_arn = aws_sns_topic.this.arn
  protocol  = "sqs"
  endpoint  = var.sqs_target_arn
}
