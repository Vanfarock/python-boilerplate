terraform {
  backend "gcs" {
    bucket  = "python-boilerplate-dev"
    prefix  = "terraform/state"
  }
}
