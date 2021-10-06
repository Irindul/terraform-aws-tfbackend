resource "aws_dynamodb_table" "dynamodb_tfstates" {
  name           = "${var.bucket_tfstates_name}-lock"
  read_capacity  = 5
  write_capacity = 5
  hash_key       = "LockID"

  tags = {
    "Name" = format("%s", "${var.bucket_tfstates_name}-lock")
  }

  attribute {
    name = "LockID"
    type = "S"
  }

  point_in_time_recovery {
    enabled = true
  }
}

