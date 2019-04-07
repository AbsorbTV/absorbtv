data "aws_dynamodb_table" "table" {
  name = "${var.table_name}"
}

resource "aws_appsync_datasource" "datasource" {

  api_id = "${var.api_id}"
  name   = "${var.table_name}"
  type   = "AMAZON_DYNAMODB"

  dynamodb_config {
    region     = "${var.region}"
    table_name = "${var.table_name}"
  }

  service_role_arn = "${aws_iam_role.appsync-datasource-iam.arn}"
}

resource "aws_iam_role" "appsync-datasource-iam" {
  name = "lent-${terraform.workspace}-datasource-${var.table_name}"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "appsync.amazonaws.com"
      },
      "Effect": "Allow"
    }
  ]
}
EOF
}

resource "aws_iam_role_policy" "appsync-datasource-iam" {
  name = "lent-${terraform.workspace}-appsync-datasource-${var.table_name}"
  role = "${aws_iam_role.appsync-datasource-iam.id}"

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "dynamodb:*"
      ],
      "Effect": "Allow",
      "Resource": "${data.aws_dynamodb_table.table.arn}"
    }
  ]
}
EOF
}
