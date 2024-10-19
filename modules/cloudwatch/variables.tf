variable "log_group_name" {
  description = "Nome do grupo de logs do CloudWatch"
  type        = string
}

variable "retention_in_days" {
  description = "Período de retenção dos logs em dias"
  type        = number
  default     = 30
}
