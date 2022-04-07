terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.14.0"
    }
  }

}

provider "google" {
  project = "hc-6eded284b47d419096eb99dd00f"
  region  = "us-west1"
}

// Root provider 
provider "vault" {
  alias = "root_namespace"
}

// Enablement provider 
provider "vault" {
  namespace = "enablement"
  alias = "enablement_namespace"
}

// team2 provider 
provider "vault" {
  namespace = "enablement/team2"
  alias = "team2_namespace"
}