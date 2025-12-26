terraform {
  backend "s3" {
    bucket = "production-infra-in"
    key    = "shravan/production-infra/terraform.tfstate"
    region = "eu-north-1"
  }
}