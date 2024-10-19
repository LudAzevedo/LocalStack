output "log_group_name" {
  description = "Nome do grupo de logs do CloudWatch criado"
  value       = aws_cloudwatch_log_group.this.name
}
