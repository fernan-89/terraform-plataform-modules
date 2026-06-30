variable "topic_name" { type = string }
variable "sqs_target_arn" { type = string; default = "" }
variable "tags" { type = map(string) }
