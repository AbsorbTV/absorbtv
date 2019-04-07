variable "aws_region" {
  description = "AWS region"
  default = "eu-west-1"
}

variable "project_name" {
  description = "Name of project"
  default = "absorbtv"
}

variable "from_email" {
  description = "What email should be the sender?"
  default = "noreply@absorb.tv"
}

variable "domain" {
  description = "Primary Domain"
  default = "absorb.tv"
}

variable "is_production" {
  default = false
}

variable "datasources" {
  default = []
}

locals {
  prefix = "${var.is_production ? "prod" : terraform.workspace}"
}

variable "version" {
  description = "Version to deploy"
  default = "local"
}

variable "bucket" {
  description = "bucket to deploy"
  default = "absorbtv-deploy"
}
