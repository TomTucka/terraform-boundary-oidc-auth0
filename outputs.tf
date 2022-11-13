output "boundary_auth_method_id" {
	value = boundary_auth_method_oidc.provider.id
}

output "auth0_tentant_url" {
	value = data.auth0_tenant.tenant.domain
}
