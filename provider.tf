terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.59.0" # aws provider version, not terraform version
    }
  }

  backend "s3" {
    bucket = "daws77s-remote-state"
    key    = "vpc-test"
    region = "us-east-1"
    dynamodb_table = "daws77s-locking"
  }
}

provider "aws" {
  region = "us-east-1"
}