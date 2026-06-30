resource "aws_api_gateway_rest_api" "this" {
  name        = var.api_name
  description = var.description
  
  endpoint_configuration {
    types = ["PRIVATE"]
  }
  
  # Política que restringe o acesso à VPC específica
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect    = "Allow"
        Principal = "*"
        Action    = "execute-api:Invoke"
        Resource  = "*"
      },
      {
        Effect    = "Deny"
        Principal = "*"
        Action    = "execute-api:Invoke"
        Resource  = "*"
        Condition = {
          StringNotEquals = {
            "aws:sourceVpc" = var.vpc_id
          }
        }
      }
    ]
  })
}

resource "aws_api_gateway_stage" "this" {
  deployment_id = aws_api_gateway_deployment.this.id
  rest_api_id   = aws_api_gateway_rest_api.this.id
  stage_name    = var.stage_name
}

resource "aws_api_gateway_deployment" "this" {
  rest_api_id = aws_api_gateway_rest_api.this.id
  depends_on  = [aws_api_gateway_rest_api.this]
}
