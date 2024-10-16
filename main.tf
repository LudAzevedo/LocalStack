# Definir um bucket S3
resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-local-bucket"
}

# Definir uma tabela DynamoDB
resource "aws_dynamodb_table" "my_table" {
  name           = "my-local-table"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "id"

  attribute {
    name = "id"
    type = "S"
  }
}

# Definir uma fila SQS
resource "aws_sqs_queue" "my_queue" {
  name = "my-local-queue"
  visibility_timeout_seconds = 30
}

# Definir um tópico SNS
resource "aws_sns_topic" "my_topic" {
  name = "my-local-topic"
}

# Definir uma função Lambda e seu IAM Role
resource "aws_iam_role" "lambda_role" {
  name = "my_lambda_role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action    = "sts:AssumeRole"
        Effect    = "Allow"
        Principal = {
          Service = "lambda.amazonaws.com"
        }
      }
    ]
  })
}

resource "aws_lambda_function" "my_lambda" {
  function_name = "my-local-lambda"
  handler       = "index.handler"
  runtime       = "python3.8"
  role          = aws_iam_role.lambda_role.arn

  filename = "${path.module}/lambda_function.zip"
}

# Definir um grupo de logs no CloudWatch Logs
resource "aws_cloudwatch_log_group" "my_log_group" {
  name              = "/aws/lambda/my-local-log-group"
  retention_in_days = 14
}
