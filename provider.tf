terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.67.0"
    }
  }
  
  backend "s3" {
    bucket = "pjdevops-remote"
    key    = "terraform-aws-minikube"
    region = "us-east-1"
    dynamodb_table = "pjdevops-remote-locking"
    }

}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}