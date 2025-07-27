variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "eu-north-1"
}

variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
  default     = "ayush-test-tfsec-bucket"
}
