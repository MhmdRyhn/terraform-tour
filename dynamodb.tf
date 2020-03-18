resource "aws_dynamodb_table" "test-table" {
  name           = "test-table"
  read_capacity  = 10
  write_capacity = 10
  hash_key       = "email"

  attribute {
    name = "email"
    type = "S"
  }

  tags = {
    Name        = "fisrt-test-table"
    Environment = "Dev"
  }
}
