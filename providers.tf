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

// team1 provider 
provider "vault" {
  namespace = "enablement/team1"
  alias = "team1_namespace"
}