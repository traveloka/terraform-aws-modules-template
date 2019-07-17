# This file contains terraform version constrains, provider definition, and also main resources.
# https://www.terraform.io/docs/configuration/resources.html

terraform {
  required_version = ">= 0.11.14, < 0.12.0"
}

provider "aws" {
  version = ">= 2.0.0, < 3.0.0"
}
