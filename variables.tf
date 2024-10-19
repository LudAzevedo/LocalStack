variable "region" {
  description = "Região AWS"
  type        = string
  default     = "us-east-1"
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
