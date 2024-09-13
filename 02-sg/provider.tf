terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.64.0" # AWS provider version, not terraform version
    }
  }

  backend "s3" {
    bucket = "chilops-terraform-remotestate"
    key    = "sg"
    region = "us-east-1"
    dynamodb_table = "dhilops-locking"
  }
}

provider "aws" {
  region = "us-east-1"
}
