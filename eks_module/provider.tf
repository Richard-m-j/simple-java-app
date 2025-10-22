provider "aws" {
  region = var.region
  # Allow using temporary session credentials injected via environment variables by Jenkins.
  # The AWS provider automatically picks up AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY, and AWS_SESSION_TOKEN.
  # Optionally disable some validations when using STS session tokens.
  skip_credentials_validation = false
  skip_metadata_api_check     = true
  # access_key = var.access_key  # Prefer env vars from Jenkins credentials binding
  # secret_key = var.secret_key
}



