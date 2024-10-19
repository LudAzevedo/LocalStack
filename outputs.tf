output "s3_bucket_arn" {
  description = "ARN do bucket S3 criado"
  value       = module.s3_bucket.bucket_arn
}

output "dynamodb_table_name" {
  description = "Nome da tabela DynamoDB criada"
  value       = module.dynamodb_table.table_name
}

output "sqs_queue_url" {
  description = "URL da fila SQS criada"
  value       = module.sqs_queue.queue_url
}

output "sns_topic_arn" {
  description = "ARN do tópico SNS criado"
  value       = module.sns_topic.topic_arn
}

output "log_group_name" {
  description = "Nome do grupo de logs CloudWatch criado"
  value       = module.cloudwatch_log_group.log_group_name
}

