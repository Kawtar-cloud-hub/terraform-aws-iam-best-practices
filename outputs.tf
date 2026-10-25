output "iam_user_name" {
  value       = aws_iam_user.dev_user.name
  description = "The name of the created IAM user"
}

output "iam_policy_arn" {
  value       = aws_iam_policy.s3_read_only.arn
  description = "The ARN of the custom S3 Read-Only IAM Policy"
}
