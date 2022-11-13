variable "name" {
  description = "The name for the Boundary connection in Auth0"
  type        = string
}

variable "description" {
  description = "The description for the application in Auth0"
  default     = "Boundary OIDC"
  type        = string
}

variable "boundary_url" {
  description = "Your Boundary instance URL, do not include to / onthe end of your input. Defaults to localhost"
  default     = "http://localhost:9200"
  type        = string
}

variable "boudnary_scope_id" {
  description = "The global boundary scope ID"
  type        = string
}

variable "claims_scopes" {
  description = "A list of Claims Scopes"
  default     = []
  type  	    = list(string)
}

variable "account_claim_maps" {
  description = "Account claim maps for the to_claim of sub."
  default     = []
  type  	    = list(string)
}

variable "is_primary_for_scope" {
  description = "When true, makes this auth method the primary auth method for the scope in which it resides."
  default     = true
  type        = bool
}
variable "state" {
  description = "The current state of an OIDC auth method"
  default     = "active-public"
  type        = string
}
