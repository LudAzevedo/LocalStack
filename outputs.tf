output "s3_bucket_id" {
  value = aws_s3_bucket.my_bucket.id
}

output "dynamodb_table_name" {
  value = aws_dynamodb_table.my_table.name
}

output "sqs_queue_url" {
  value = aws_sqs_queue.my_queue.id
}

output "sns_topic_arn" {
  value = aws_sns_topic.my_topic.arn
}

output "lambda_function_arn" {
  value = aws_lambda_function.my_lambda.arn
}

output "log_group_name" {
  value = aws_cloudwatch_log_group.my_log_group.name
}
