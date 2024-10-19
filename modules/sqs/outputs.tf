output "queue_url" {
  description = "URL da fila SQS criada"
  value       = aws_sqs_queue.this.id
}
