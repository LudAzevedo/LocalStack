variable "region" {
  description = "Região AWS"
  type        = string
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "Nome do bucket S3"
  type        = string
  default     = "meu-bucket-teste"
}

variable "queue_name" {
  description = "Nome da fila SQS"
  type        = string
  default     = "minha-fila-teste"
}

variable "table_name" {
  description = "Nome da tabela DynamoDB"
  type        = string
  default     = "minha-tabela-teste"
}
