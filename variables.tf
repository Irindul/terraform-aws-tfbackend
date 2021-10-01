variable "bucket_tfstates_name" {
  type        = string
  description = "Name of the S3 bucket"
}

variable "deploy_region" {
  type        = string
  description = "Region where the objects will be deployed"
}

variable "administrators" {
  type        = list(string)
  description = "List of infrastructure administrators"
}

variable "users" {
  type        = list(string)
  description = "List of Terraform users"
}
