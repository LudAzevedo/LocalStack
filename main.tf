provider "aws" {
  access_key                  = "test"
  secret_key                  = "test"
  region                      = "us-east-1"
  skip_credentials_validation = true
  s3_force_path_style         = true
  endpoints {
    s3      = "http://localhost:4566"
    dynamodb = "http://localhost:4566"
  }
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-local-bucket"
}

resource "aws_dynamodb_table" "my_table" {
  name           = "my-local-table"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "id"

  attribute {
    name = "id"
    type = "S"
  }
}
