resource "aws_cognito_identity_provider" "main" {
  user_pool_id  = var.cognito_user_pool_id
  provider_name = "Azure"
  provider_type = "SAML"

  provider_details = {
    MetadataFile = var.xml_metadata_file != null ? data.template_file.xml_metadata_file[0].rendered : null
    MetadataUrl  = var.xml_metadata_url != null ? var.xml_metadata_url : null
    IDPSignout   = var.idp_signout_url
  }

  attribute_mapping = var.attribute_mapping
}


