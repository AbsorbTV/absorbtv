resource "aws_dynamodb_table" "Series" {
  name = "${local.prefix}-Series"

  read_capacity  = 5
  write_capacity = 5

  hash_key = "id"

  attribute {
    name = "id"
    type = "S"
  }

	attribute {
    name = "name"
    type = "S"
  }

  local_secondary_index {
    name            = "NameIndex"
    range_key       = "name"
    write_capacity  = 5
    read_capacity   = 5
    projection_type = "ALL"
  }

  tags {
    Version = "${var.version}"
  }
}

resource "aws_dynamodb_table" "Episodes" {
  name = "${local.prefix}-Episodes"

  read_capacity  = 5
  write_capacity = 5

  hash_key = "id"

  attribute {
    name = "id"
    type = "S"
  }

	attribute {
    name = "seriesId"
    type = "S"
  }

	attribute {
    name = "name"
    type = "S"
  }

  local_secondary_index {
    name            = "NameIndex"
    range_key       = "name"
    write_capacity  = 5
    read_capacity   = 5
    projection_type = "ALL"
  }

	local_secondary_index {
    name            = "SeriesIndex"
    range_key       = "seriesId"
    write_capacity  = 5
    read_capacity   = 5
    projection_type = "ALL"
  }

  tags {
    Version = "${var.version}"
  }
}
