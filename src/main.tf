provider "aws" {
  region  = "us-east-2"
  version = "~> 3.0"
}

#terraform {
#  backend "s3" {
#    bucket = "your_bucket_name"
#    key    = "terraform-simple-aws.tfstate"
#    region = "us-east-2"
#  }
#}
