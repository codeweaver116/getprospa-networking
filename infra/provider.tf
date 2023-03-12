terraform {
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.0.0"
    }
  }
  cloud {
    organization = "Oaklabs"

    workspaces {
      name = "getprospa-networking-qa"
    }
  }
}