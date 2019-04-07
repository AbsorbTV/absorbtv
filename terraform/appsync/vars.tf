variable "dynamodb_table_names" {
    description = "Map of DynamoDB datasources to create"
    type = "map"
}
variable "region" {}
variable "name" {}
variable "user_pool_id" {}
