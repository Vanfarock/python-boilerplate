#!/bin/bash

# Check if environment is passed as an argument
if [ -z "$1" ]; then
  echo "Usage: ./create_backend.sh <env>"
  echo "Example: ./create_backend.sh dev"
  exit 1
fi

# Determine the bucket name based on the environment
BUCKET_NAME="$1"

# Create the backend.tf file dynamically
cat > ./infra/terraform/backend.tf <<EOL
terraform {
  backend "gcs" {
    bucket  = "${BUCKET_NAME}"
    prefix  = "terraform/state"
  }
}
EOL

echo "Generated backend.tf with bucket: $BUCKET_NAME"
