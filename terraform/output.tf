output "cognito-client-id" {
  value = "${aws_cognito_user_pool_client.client.id}"
}

output "cognito-pool-id" {
  value = "${aws_cognito_user_pool.pool.id}"
}
