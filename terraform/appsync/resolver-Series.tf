# resource "aws_appsync_resolver" "GetCampaignResolver" {
#   api_id           = "${aws_appsync_graphql_api.common.id}"
#   type             = "Query"
#   field            = "getCampaign"
#   data_source      = "${module.Datasource_Campaigns.name}"
#   request_template = "${file("${path.module}/resolvers/default_get_request.vtl")}"
#   response_template = "${file("${path.module}/resolvers/default_get_response.vtl")}"
# }
