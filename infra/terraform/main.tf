provider "google" {
  project = "python-boilerplate-434701"
  region  = "us-central1"
}

module "resources" {
  source = "./resources"

  deletion_protection = var.deletion_protection
}
