provider"aws" {
	region = "us-east-1"
}

module "module-s3" {
  source = "./s3"
}

module "module-vpc" {
  source = "./vpc"
}

module "terraform-dynamodb-table" {
  source = "./dynamodb"
 }