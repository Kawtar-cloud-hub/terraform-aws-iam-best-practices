variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = "AWS region for deployment"
}

variable "developer_name" {
  type        = string
  default     = "dev-user-kawtar"
  description = "Name for the restricted developer IAM user"
}
