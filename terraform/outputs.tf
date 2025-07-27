output "artifact_bucket" {
  description = "S3 artifact bucket name"
  value       = aws_s3_bucket.artifact_bucket.id
}

output "codepipeline_name" {
  description = "Name of the CodePipeline"
  value       = aws_codepipeline.devsecops_pipeline.name
}

output "codebuild_project" {
  description = "CodeBuild project name"
  value       = aws_codebuild_project.devsecops_build.name
}

output "codedeploy_application" {
  description = "CodeDeploy application name"
  value       = aws_codedeploy_app.devsecops_app.name
}

output "codedeploy_deployment_group" {
  description = "CodeDeploy deployment group name"
  value       = aws_codedeploy_deployment_group.devsecops_group.deployment_group_name
}

output "ec2_instance_public_ip" {
  description = "Public IP of the deployed EC2 instance"
  value       = aws_instance.app_server.public_ip
}

output "ec2_instance_id" {
  description = "Instance ID of the EC2 server"
  value       = aws_instance.app_server.id
}

output "ec2_instance_profile" {
  description = "Name of the IAM instance profile attached to EC2"
  value       = aws_iam_instance_profile.ec2_profile.name
}

output "codestar_connection_arn" {
  description = "ARN of the CodeStar GitHub connection used"
  value       = var.codestar_connection_arn
}
