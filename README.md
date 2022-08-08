# Simple terraform script

## About the project
- This is a very simple way to create EC2 instances in aws, with a respective VPC and subnets, one of these subnets being public and the other private. While the public can be accessed and access the local network and go out to the network through the internet gateway, the private subnet has access to the local network, being able to communicate with the public subnet, and go out to the internet with a NAT gateway. All data is stored in a s3 bucket of the maintainer, so follow the steps to configure correctly

## how it works
- Clone this repository
- remember to have terraform installed on your machine, these download instructions can be found in the official terraform documentation
- Access your aws account, and create a s3 bucket
- Change main.tf doc, line 8 [ bucket = "your_bucket_name"] for your bucket name
- terraform init

## Attention points
- Remember to use [terraform destroy] if it is not necessary to keep the test machines running with the applications to avoid consuming resources on your account


