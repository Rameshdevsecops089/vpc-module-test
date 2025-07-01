terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.98.0"
    }
  }

backend "s3" {  # backend is the state
    bucket = "84s-remote-state-buckets"
    key    = "vpc-test" # state file will store with this key
    region = "us-east-1"
    encrypt = true
    use_lockfile = true # Enable S3 native locking
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}