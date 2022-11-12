terraform {
  required_providers {
    auth0 = {
      source  = "auth0/auth0"
      version = ">= 0.40.0"
    }
    boundary = {
      source  = "hashicorp/boundary"
      version = "1.1.2"
    }
  }
}
