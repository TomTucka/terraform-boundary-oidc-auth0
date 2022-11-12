data "auth0_tenant" "tenant" {}

resource "auth0_client" "client" {
  name                = var.name
  description         = var.description
  app_type            = "regular_web"
  callbacks           = ["${var.boundary_url}/v1/auth-methods/oidc:authenticate:callback"]
  allowed_logout_urls = ["${var.boundary_url}:3000"]
}

resource "boundary_auth_method_oidc" "provider" {
  name               = "Auth0"
  description        = "OIDC auth method for Auth0"
  scope_id           = var.boudnary_scope_id
  issuer             = data.auth0_tenant.tenant.domain
  client_id          = auth0_client.clinet.client_id
  client_secret      = auth0_clinet.client.client_secret
  signing_algorithms = ["RS256"]
  api_url_prefix     = "${var.boundary_url}:9200"
}
