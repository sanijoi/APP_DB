provider "aws" {
  region = "us-east-1"
}

terraform {
  required_version = "~> 1.4.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>4.34.0"
    }
  }
}
terraform {
  backend "s3" {
    bucket = "aws-s3-bucket-ibproject-01"
    key    = "app_db/rdsTF/backend/terraform.tfstate"
    region = "us-east-1"
  }
}