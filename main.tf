terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.0"  # Use a valid version
    }
    random = {
      source  = "hashicorp/random"
      version = "3.5.1"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "demo" {
  bucket = "my-bucket-${random_string.demo.result}"
}

resource "random_string" "demo" {
  length  = 8
  special = false
}

output "bucket_name" {
  value = aws_s3_bucket.demo.bucket
}