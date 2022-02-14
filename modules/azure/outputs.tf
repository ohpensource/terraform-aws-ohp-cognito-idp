output "id" {
  value       = aws_cognito_identity_provider.main.id
  description = "Cognito IdP Id"
}

output "name" {
  value       = aws_cognito_identity_provider.main.provider_name
  description = "Cognito IdP Name"
}
