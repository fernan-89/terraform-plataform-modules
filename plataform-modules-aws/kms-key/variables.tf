variable "key_alias" { type = string }
variable "description" { type = string; default = "KMS key for application encryption" }
variable "tags" { type = map(string) }
