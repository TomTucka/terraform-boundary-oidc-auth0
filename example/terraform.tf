terraform {
  required_providers {
    auth0 = {
      source  = "auth0/auth0"
      version = ">= 0.40.0"
    }
	boundary = {
		source  = "hashicorp/boundary"
		version = ">= 1.1.2"
	}
  }
}

variable "auth_method_id" {}
variable "password_auth_method_login_name" {}
variable "password_auth_method_password" {}

provider "auth0" {}

provider "boundary" {
  auth_method_id                  = var.auth_method_id
  password_auth_method_login_name = var.password_auth_method_login_name
  password_auth_method_password   = var.password_auth_method_password
}

module "auth0-boundary-oidc" {
  source                 = "../"
  name                   = "Boundary OIDC Module"
  boundary_url           = "https://68a79e06-d8e6-4900-99c4-bb0f9f5ebcc9.boundary.hashicorp.cloud"
  boudnary_scope_id      = "o_HheAQihU9V"
  is_primary_for_scope   = true
  account_claim_maps     = [
    "email=email",
    "name=name",
    "sub=sub"
  ]
  claims_scopes = [
    "email",
    "profile",
	"sub"
  ]
}

resource "boundary_managed_group" "plat_engineers" {
  name           = "Platform Engineers"
  description    = "An example of an OIDC managed group"
  auth_method_id = module.auth0-boundary-oidc.boundary_auth_method_id
  filter         = "\"Platform Engineering\" in \"/userinfo/teams\""
}
