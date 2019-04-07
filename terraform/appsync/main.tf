resource "aws_appsync_graphql_api" "common" {
  authentication_type = "AMAZON_COGNITO_USER_POOLS"
  name                = "${var.name}-${terraform.workspace}"

  schema              = "${file("${path.module}/schema.graphql")}"

  user_pool_config {
    aws_region     = "${var.region}"
    default_action = "ALLOW"
    user_pool_id   = "${var.user_pool_id}"
  }
}
