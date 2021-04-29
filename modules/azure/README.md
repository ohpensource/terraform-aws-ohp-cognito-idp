# XOPS Terraform module for AWS Cognito User Pool Azure (SAML) Identity Provider

## Usage

See examples folder.

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.14 |
| aws | >= 3.0 |

## Providers

| Name | Version |
|------|---------|
| aws | >= 3.0 |
| template | n/a |

## Modules

No Modules.

## Resources

| Name |
|------|
| [aws_cognito_identity_provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cognito_identity_provider) |
| [template_file](https://registry.terraform.io/providers/hashicorp/template/latest/docs/data-sources/file) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| cognito\_user\_pool\_id | (Required) AWS Cognito User Pool Id | `string` | n/a | yes |
| attribute\_mapping | A mapping of identity provider attributes to standard and custom user pool attributes | `map(any)` | <pre>{<br>  "Family Name": "http://schemas.xmlsoap.org/ws/2005/05/identity/claims/surname",<br>  "Given Name": "http://schemas.xmlsoap.org/ws/2005/05/identity/claims/givenname",<br>  "Name": "http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name",<br>  "custom:groups": "http://schemas.microsoft.com/ws/2008/06/identity/claims/groups",<br>  "email": "http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress"<br>}</pre> | no |
| idp\_identifiers | The list of identity providers. | `list(string)` | `[]` | no |
| saml\_metadata\_sso\_redirect\_binding\_uri | value | `string` | `"https://login.microsoftonline.com/d7661b63-f3e7-470c-9d60-fd77e99f4bfc/saml2"` | no |
| xml\_metadata\_file | SAML xml metadata file | `any` | `null` | no |
| xml\_metadata\_url | SAML xml metadata url | `any` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| id | Cognito User Pool Id |
| name | Cognito User Pool Name |
