module "Datasource_Series" {
    source = "./dynamodb-datasource"
    table_name = "${var.dynamodb_table_names["Series"]}"
    api_id = "${aws_appsync_graphql_api.common.id}"
    region = "${var.region}"
}

module "Datasource_Episodes" {
    source = "./dynamodb-datasource"
    table_name = "${var.dynamodb_table_names["Episodes"]}"
    api_id = "${aws_appsync_graphql_api.common.id}"
    region = "${var.region}"
}

module "Datasource_Users" {
    source = "./dynamodb-datasource"
    table_name = "${var.dynamodb_table_names["Users"]}"
    api_id = "${aws_appsync_graphql_api.common.id}"
    region = "${var.region}"
}

resource "aws_appsync_datasource" "None" {
  depends_on = ["aws_appsync_graphql_api.common"]

  api_id = "${aws_appsync_graphql_api.common.id}"
  name   = "None"
  type   = "NONE"
}
