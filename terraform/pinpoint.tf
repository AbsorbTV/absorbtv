resource "aws_pinpoint_email_channel" "email" {
  application_id = "${aws_pinpoint_app.app.application_id}"
  from_address   = "${var.from_email}"
  identity       = "${aws_ses_domain_identity.identity.arn}"
  role_arn       = "${aws_iam_role.pinpoint-role.arn}"
}

resource "aws_pinpoint_app" "app" {
  name = "${var.project_name}"
}

resource "aws_ses_domain_identity" "identity" {
  domain = "${var.domain}"
}

resource "aws_iam_role" "pinpoint-role" {
  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "pinpoint.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

resource "aws_iam_role_policy" "pinpoint-role_policy" {
  name   = "pinpoint-role_policy"
  role   = "${aws_iam_role.pinpoint-role.id}"
  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": {
    "Action": [
      "mobileanalytics:PutEvents",
      "mobileanalytics:PutItems"
    ],
    "Effect": "Allow",
    "Resource": [
      "*"
    ]
  }
}
EOF
}
