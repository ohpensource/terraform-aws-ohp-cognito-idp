# Terraform module for AWS Cognito User Pool Azure (SAML) Identity Provider

## Usage

See examples folder.

<!--- BEGIN_TF_DOCS --->
### Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.0 |

### Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.0 |
| <a name="provider_template"></a> [template](#provider\_template) | n/a |

### Modules

No modules.

### Resources

| Name | Type |
|------|------|
| [aws_cognito_identity_provider.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cognito_identity_provider) | resource |
| [template_file.xml_metadata_file](https://registry.terraform.io/providers/hashicorp/template/latest/docs/data-sources/file) | data source |

### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_attribute_mapping"></a> [attribute\_mapping](#input\_attribute\_mapping) | A mapping of identity provider attributes to standard and custom user pool attributes | `map(any)` | <pre>{<br>  "Family Name": "http://schemas.xmlsoap.org/ws/2005/05/identity/claims/surname",<br>  "Given Name": "http://schemas.xmlsoap.org/ws/2005/05/identity/claims/givenname",<br>  "Name": "http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name",<br>  "custom:groups": "http://schemas.microsoft.com/ws/2008/06/identity/claims/groups",<br>  "email": "http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress"<br>}</pre> | no |
| <a name="input_cognito_user_pool_id"></a> [cognito\_user\_pool\_id](#input\_cognito\_user\_pool\_id) | (Required) AWS Cognito User Pool Id | `string` | n/a | yes |
| <a name="input_idp_identifiers"></a> [idp\_identifiers](#input\_idp\_identifiers) | The list of identity providers. | `list(string)` | `[]` | no |
| <a name="input_saml_metadata_sso_redirect_binding_uri"></a> [saml\_metadata\_sso\_redirect\_binding\_uri](#input\_saml\_metadata\_sso\_redirect\_binding\_uri) | value | `string` | `"https://login.microsoftonline.com/d7661b63-f3e7-470c-9d60-fd77e99f4bfc/saml2"` | no |
| <a name="input_xml_metadata_file"></a> [xml\_metadata\_file](#input\_xml\_metadata\_file) | SAML xml metadata file | `any` | `null` | no |
| <a name="input_xml_metadata_url"></a> [xml\_metadata\_url](#input\_xml\_metadata\_url) | SAML xml metadata url | `any` | `null` | no |

### Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | Cognito User Pool Id |
| <a name="output_name"></a> [name](#output\_name) | Cognito User Pool Name |

<!--- END_TF_DOCS --->