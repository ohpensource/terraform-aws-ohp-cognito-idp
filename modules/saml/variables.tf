variable "cognito_user_pool_id" {
  description = "(Required) AWS Cognito User Pool Id"
  type        = string
}

variable "xml_metadata_file" {
  description = "SAML xml metadata file"
  default     = null
}

variable "xml_metadata_url" {
  description = "SAML xml metadata url"
  default     = null
}

variable "attribute_mapping" {
  description = "A mapping of identity provider attributes to standard and custom user pool attributes"
  type        = map(any)
  default = {
    # "Name"          = "http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name"
    # "Given Name"    = "http://schemas.xmlsoap.org/ws/2005/05/identity/claims/givenname"
    # "Family Name"   = "http://schemas.xmlsoap.org/ws/2005/05/identity/claims/surname"
    # "custom:groups" = "http://schemas.microsoft.com/ws/2008/06/identity/claims/groups"
    "email"         = "http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress"
  }
}

variable "idp_identifiers" {
  type        = list(string)
  description = "The list of identity providers."
  default     = []
}

variable "idp_name" {
  type        = string
  description = "The identity provider name"
  default     = "saml-idp"
}

variable "idp_signout_url" {
  type        = string
  description = "Optional"
  default     = null
}