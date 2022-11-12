# terraform-boundary-oidc-auth0

Terraform module configure OIDC with HashiCorp Boundary using Auth0

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_auth0"></a> [auth0](#requirement\_auth0) | >= 0.40.0 |
| <a name="requirement_boundary"></a> [boundary](#requirement\_boundary) | 1.1.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_auth0"></a> [auth0](#provider\_auth0) | >= 0.40.0 |
| <a name="provider_boundary"></a> [boundary](#provider\_boundary) | 1.1.2 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_boudnary_scope_id"></a> [boudnary\_scope\_id](#input\_boudnary\_scope\_id) | The global boundary scope ID | `any` | n/a | yes |
| <a name="input_boundary_url"></a> [boundary\_url](#input\_boundary\_url) | Your Boundary instance URL, do not include to / onthe end of your input. Defaults to localhost | `string` | `"http://localhost:9200"` | no |
| <a name="input_description"></a> [description](#input\_description) | The description for the application in Auth0 | `string` | `"Boundary OIDC"` | no |
| <a name="input_name"></a> [name](#input\_name) | The name for the Boundary connection in Auth0 | `any` | n/a | yes |

## Outputs

No outputs.

## Resources

| Name | Type |
|------|------|
| [auth0_client.client](https://registry.terraform.io/providers/auth0/auth0/latest/docs/resources/client) | resource |
| [boundary_auth_method_oidc.provider](https://registry.terraform.io/providers/hashicorp/boundary/1.1.2/docs/resources/auth_method_oidc) | resource |
| [auth0_tenant.tenant](https://registry.terraform.io/providers/auth0/auth0/latest/docs/data-sources/tenant) | data source |
