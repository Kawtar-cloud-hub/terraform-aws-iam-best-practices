# Create an IAM User
resource "aws_iam_user" "dev_user" {
  name = var.developer_name
  tags = {
    Environment = "Dev"
    ManagedBy   = "Terraform"
  }
}

# Define a Restricted IAM Policy (Read-Only S3 Access)
resource "aws_iam_policy" "s3_read_only" {
  name        = "S3ReadOnlyRestrictedPolicy"
  path        = "/"
  description = "Provides read-only access to specific S3 resources"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "s3:Get*",
          "s3:List*"
        ]
        Effect   = "Allow"
        Resource = "*"
      }
    ]
  })
}

# Attach Policy to User
resource "aws_iam_policy_attachment" "dev_user_s3_attach" {
  name       = "dev-user-s3-attachment"
  users      = [aws_iam_user.dev_user.name]
  policy_arn = aws_iam_policy.s3_read_only.arn
}
