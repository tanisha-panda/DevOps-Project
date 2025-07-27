variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
}

variable "project_name" {
  description = "Project name prefix used for naming resources"
  type        = string
}

variable "bucket_name" {
  description = "Unique S3 bucket name for storing CodePipeline artifacts"
  type        = string
}

variable "ami_id" {
  description = "AMI ID to launch EC2 instance (ensure it matches the region)"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type to be used for deployment"
  type        = string
  default     = "t3.micro"
}

variable "key_name" {
  description = "EC2 key pair name for SSH access"
  type        = string
}

variable "instance_tag_key" {
  description = "Tag key to identify EC2 instance for CodeDeploy"
  type        = string
  default     = "Name"
}

variable "instance_tag_value" {
  description = "Tag value for EC2 instance to match deployment group"
  type        = string
  default     = "MyAppServer"
}

variable "codebuild_image" {
  description = "Docker image to be used in CodeBuild environment"
  type        = string
  default     = "aws/codebuild/standard:6.0"
}

variable "github_owner" {
  description = "GitHub username or organization"
  type        = string
}

variable "github_repo" {
  description = "GitHub repository name containing the application code"
  type        = string
}

variable "github_branch" {
  description = "GitHub branch to use as the source for CodePipeline"
  type        = string
}

variable "github_token" {
  description = "GitHub Personal Access Token (used optionally for CI, not by Terraform)"
  type        = string
  sensitive   = true
}

variable "codestar_connection_arn" {
  description = "ARN of the AWS CodeStar connection to GitHub"
  type        = string
  default     = "arn:aws:codeconnections:eu-north-1:429367298132:connection/87c58575-5dc3-4d3f-9a7f-42e9d54edd08"
}
