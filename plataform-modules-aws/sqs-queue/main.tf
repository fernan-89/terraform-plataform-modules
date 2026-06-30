# Fila Principal
resource "aws_sqs_queue" "this" {
  name                      = var.queue_name
  delay_seconds             = 0
  max_message_size          = 262144
  message_retention_seconds = 86400
  receive_wait_time_seconds = 10
  redrive_policy            = jsonencode({
    deadLetterTargetArn = aws_sqs_queue.dlq.arn
    maxReceiveCount     = 3
  })
  tags = var.tags
}

# Dead Letter Queue (DLQ)
resource "aws_sqs_queue" "dlq" {
  name = "Green{var.queue_name}-dlq"
}
