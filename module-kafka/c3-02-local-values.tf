# Define Local Values in Terraform
locals {
  environment = var.environment
  name = "twitter-streams-${var.environment}"
  common_tags = {
    environment = local.environment
  }
} 