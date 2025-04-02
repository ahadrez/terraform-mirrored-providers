terraform {
  required_providers {
    tls = {
      source  = "hashicorp/tls"
      version = "4.0.5"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.7.1"
    }
    google = {
      source  = "hashicorp/google"
      version = ">= 4.0.0"
    }
  }
}

provider "tls" {}
provider "random" {}
provider "google" {}

