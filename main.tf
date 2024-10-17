provider "aws" {
  access_key                  = "test"
  secret_key                  = "test"
  region                      = "us-east-1"
  s3_force_path_style         = true
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true
  endpoints {
    s3    = "http://localhost:4566"
    sqs   = "http://localhost:4566"
    dynamodb = "http://localhost:4566"
  }
}

module "s3_bucket" {
  source      = "./modules/s3"
  bucket_name = "meu-bucket-teste"
}

module "sqs_queue" {
  source     = "./modules/sqs"
  queue_name = "minha-fila-teste"
}

module "dynamodb_table" {
  source     = "./modules/dynamodb"
  table_name = "minha-tabela-teste"
}
