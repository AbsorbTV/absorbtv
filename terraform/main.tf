provider "aws" {
  version = "~> 2.4.0"
  region = "${var.aws_region}"
}

terraform {
  backend "s3" {}
}

module "appsync" {
  source = "./appsync"
  name = "absorbtv"
  region = "${var.aws_region}"

  user_pool_id = "${aws_cognito_user_pool.pool.id}"

  dynamodb_table_names = {
    Series = "${aws_dynamodb_table.Series.name}"
  }
}

resource "aws_cognito_user_pool" "pool" {
  name                     = "${local.prefix}-${var.project_name}"
  auto_verified_attributes = ["email"]

  device_configuration {
    device_only_remembered_on_user_prompt = "true"
  }

  email_verification_subject = "Confirm your email"
}

resource "aws_cognito_user_pool_client" "client" {
  name = "Public Client"

  generate_secret = false
  user_pool_id  = "${aws_cognito_user_pool.pool.id}"
}
