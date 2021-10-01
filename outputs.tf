output "backend_config_cli_string" {
  description = "Line to add in terraform cli to init backend"
  value       = "-backend-config='bucket=${var.bucket_tfstates_name}' -backend-config='region=${var.deploy_region}' -backend-config='encrypt=true' -backend-config='kms_key_id=${aws_kms_key.kms_tfstates.arn}' -backend-config='dynamodb_table=${aws_dynamodb_table.dynamodb_tfstates.name}'"
}

output "backend_config_map" {
  description = "Map to add in your backend configuration"
  value = {
    bucket         = var.bucket_tfstates_name
    region         = var.deploy_region
    encrypt        = "true"
    kms_key_id     = aws_kms_key.kms_tfstates.arn
    dynamodb_table = aws_dynamodb_table.dynamodb_tfstates.name
  }
}

output "kms_tfstates" {
  description = "ARN of the produced kms key for users grants"
  value       = aws_kms_key.kms_tfstates.arn
}

output "s3_tfstates" {
  description = "ARN of the created s3 bucket for usage in policies"
  value       = aws_s3_bucket.bucket_tfstates.arn
}

output "dynamodb_tfstates" {
  description = "ARN of the dynamodb table created"
  value       = aws_dynamodb_table.dynamodb_tfstates.arn
}

