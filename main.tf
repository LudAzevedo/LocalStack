

module "sqs_queue" {
  source     = "./modules/sqs"
  queue_name = "minha-fila-teste"
}

module "dynamodb_table" {
  source     = "./modules/dynamodb"
  table_name = "minha-tabela-teste"
}

module "sns_topic" {
  source     = "./modules/sns"
  topic_name = "meu-topico-teste"
}

module "cloudwatch_log_group" {
  source          = "./modules/cloudwatch"
  log_group_name  = "meu-grupo-de-log"
  retention_in_days = 14

}


