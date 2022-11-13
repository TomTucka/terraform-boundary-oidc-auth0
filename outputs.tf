output "boundary_auth_method_id" {
  value       = boundary_auth_method_oidc.provider.id
  description = "The auth method id for the Auth0 OIDC connection"
}

output "auth0_tentant_url" {
  value       = data.auth0_tenant.tenant.domain
  description = "The tentant url used to configure OIDC. Note, doesn't include any prefixes"
}
