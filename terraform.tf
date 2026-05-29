terraform {
  required_version = "~> 1.12.2"

  cloud {
    hostname     = "app.terraform.io"
    organization = "HCA004"
    workspaces {
      name = "hcp-demo"
    }
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.72.0"
    }
  }
}