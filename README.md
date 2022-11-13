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
| <a name="input_account_claim_maps"></a> [account\_claim\_maps](#input\_account\_claim\_maps) | Account claim maps for the to\_claim of sub. | `list(string)` | `[]` | no |
| <a name="input_boudnary_scope_id"></a> [boudnary\_scope\_id](#input\_boudnary\_scope\_id) | The global boundary scope ID | `string` | n/a | yes |
| <a name="input_boundary_url"></a> [boundary\_url](#input\_boundary\_url) | Your Boundary instance URL, do not include to / onthe end of your input. Defaults to localhost | `string` | `"http://localhost:9200"` | no |
| <a name="input_claims_scopes"></a> [claims\_scopes](#input\_claims\_scopes) | A list of Claims Scopes | `list(string)` | `[]` | no |
| <a name="input_description"></a> [description](#input\_description) | The description for the application in Auth0 | `string` | `"Boundary OIDC"` | no |
| <a name="input_is_primary_for_scope"></a> [is\_primary\_for\_scope](#input\_is\_primary\_for\_scope) | When true, makes this auth method the primary auth method for the scope in which it resides. | `bool` | `true` | no |
| <a name="input_name"></a> [name](#input\_name) | The name for the Boundary connection in Auth0 | `string` | n/a | yes |
| <a name="input_state"></a> [state](#input\_state) | The current state of an OIDC auth method | `string` | `"active-public"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_auth0_tentant_url"></a> [auth0\_tentant\_url](#output\_auth0\_tentant\_url) | n/a |
| <a name="output_boundary_auth_method_id"></a> [boundary\_auth\_method\_id](#output\_boundary\_auth\_method\_id) | n/a |

## Resources

| Name | Type |
|------|------|
| [auth0_client.client](https://registry.terraform.io/providers/auth0/auth0/latest/docs/resources/client) | resource |
| [boundary_auth_method_oidc.provider](https://registry.terraform.io/providers/hashicorp/boundary/1.1.2/docs/resources/auth_method_oidc) | resource |
| [auth0_tenant.tenant](https://registry.terraform.io/providers/auth0/auth0/latest/docs/data-sources/tenant) | data source |
