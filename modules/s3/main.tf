provider"aws" {
	region = "us-east-1"
}

resource "aws_s3_bucket" "terraform-s3" {
  bucket = "amr-s3-terraform"
  force_destroy = true
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_versioning" "terraform-s3-versioning" {
  bucket = aws_s3_bucket.terraform-s3.id
  versioning_configuration {
    status = "Enabled"
  }
}