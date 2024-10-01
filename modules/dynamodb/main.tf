resource "aws_dynamodb_table" "terraform-dynamodb-table" {
  name           = "Terraform-Dynamodb"
  billing_mode   = "PROVISIONED"
  read_capacity  = 5
  write_capacity = 5
  hash_key       = "LockId"
  
  attribute {
    name = "LockId"
    type = "S"
  }

  tags = {
    Name        = "dynamodb-table-1"
    Environment = "Testing"
  }
}