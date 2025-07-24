variable "bucket_name" {
  description = "Unique S3 bucket name for storing artifacts"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t3.micro"
}

variable "key_name" {
  description = "SSH key name to access EC2"
  type        = string
}

variable "github_token" {
  description = "GitHub Personal Access Token for CodePipeline"
  type        = string
}

variable "instance_tag_key" {
  type    = string
  default = "Name"
}

variable "instance_tag_value" {
  type    = string
  default = "MyAppServer"
}
