output "topic_arn" {
  description = "ARN do tópico SNS criado"
  value       = aws_sns_topic.this.arn
}
