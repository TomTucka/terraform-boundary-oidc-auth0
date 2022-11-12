variable "name" {
  description = "The name for the Boundary connection in Auth0"
}

variable "description" {
  description = "The description for the application in Auth0"
  default     = "Boundary OIDC"
}

variable "boundary_url" {
  description = "Your Boundary instance URL, do not include to / onthe end of your input. Defaults to localhost"
  default     = "http://localhost:9200"
}

variable "boudnary_scope_id" {
  description = "The global boundary scope ID"
}
