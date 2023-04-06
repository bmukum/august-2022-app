terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }

  backend "s3" {
    region = "us-east-1"
    key    = "terraform.tfstate"
    bucket = "august-2022-app"
  }
}

provider "aws" {
  region = "us-east-1"
}
 